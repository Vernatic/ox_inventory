import { canStack, findAvailableSlot, getTargetInventory, isSlotWithItem } from '../helpers';
import { validateMove } from '../thunks/validateItems';
import { store, useAppDispatch, useAppSelector } from '../store';
import { DragSource, DropTarget, InventoryType, SlotWithItem } from '../typings';
import { moveSlots, selectPlayerEquipment, setConfirmPopup, setCurrentItemAmount, setItemAmount, setShowPopup, stackSlots, swapSlots } from '../store/inventory';
import { Items } from '../store/items';
export const onDrop = async (source: DragSource, target?: DropTarget) => {

  const { inventory: state } = store.getState();

  const { sourceInventory, targetInventory } = getTargetInventory(state, source.inventory, target?.inventory);

  const sourceSlot = sourceInventory.items[source.item.slot - 1] as SlotWithItem;

  const sourceData = Items[sourceSlot.name];

  if (sourceData === undefined) return console.error(`${sourceSlot.name} item data undefined!`);

  // If dragging from container slot
  if (sourceSlot.metadata?.container !== undefined) {
    // Prevent storing container in container
    if (targetInventory.type === InventoryType.CONTAINER)
      return console.log(`Cannot store container ${sourceSlot.name} inside another container`);

    // Prevent dragging of container slot when opened
    if (state.rightInventory.id === sourceSlot.metadata.container)
      return console.log(`Cannot move container ${sourceSlot.name} when opened`);
  }

  const targetSlot = target
    ? targetInventory.items[target.item.slot - 1]
    : findAvailableSlot(sourceSlot, sourceData, targetInventory.items);

  if (targetSlot === undefined) return console.error('Target slot undefined!');


  // If dropping on container slot when opened
  if (targetSlot.metadata?.container !== undefined && state.rightInventory.id === targetSlot.metadata.container)
    return console.log(`Cannot swap item ${sourceSlot.name} with container ${targetSlot.name} when opened`);

  var count = state.shiftPressed && sourceSlot.count > 1 && sourceInventory.type !== 'shop'
    ? Math.floor(sourceSlot.count / 2)
    : sourceSlot.count;

  const performActionsAfterCheckTests = async () => {
    return new Promise<void>((resolve) => {
      if (state.controlPressed) {
        store.dispatch(setShowPopup(true));
        store.dispatch(setConfirmPopup(false));
        store.dispatch(setCurrentItemAmount(sourceSlot.count));
        store.dispatch(setItemAmount(1));
        count = 0;
        function checkTests(): void {
          const { inventory: data } = store.getState();
          if (!data.showPopup && data.confirmPopup) {
            if (data.itemAmount > sourceSlot.count) {
              count = sourceSlot.count
            } else if (data.itemAmount < 0 || !data.itemAmount || isNaN(data.itemAmount) || typeof data.itemAmount !== 'number') {
              count = 0
            }
            else {
              count = data.itemAmount;
            }
            resolve(); // Resolve the promise when conditions are met
          } else {
            setTimeout(checkTests, 100);
          }
        }
        checkTests();
      } else {
        resolve(); // If state.controlPressed is false, resolve immediately
      }
    });
  };

  await performActionsAfterCheckTests();

  if (count > 0) {

    const data = {
      fromSlot: sourceSlot,
      toSlot: targetSlot,
      fromType: sourceInventory.type,
      toType: targetInventory.type,
      count: count,
    };

    store.dispatch(
      validateMove({
        ...data,
        fromSlot: sourceSlot.slot,
        toSlot: targetSlot.slot,
      })
    );
    isSlotWithItem(targetSlot, true)
      ? sourceData.stack && canStack(sourceSlot, targetSlot)
        ? store.dispatch(
          stackSlots({
            ...data,
            toSlot: targetSlot,
          })
        )
        : store.dispatch(
          swapSlots({
            ...data,
            toSlot: targetSlot,
          })
        )
      : (store.dispatch(moveSlots(data)));
  }
};


