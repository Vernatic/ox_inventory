import { CaseReducer, PayloadAction } from '@reduxjs/toolkit';
import { getTargetInventory, itemDurability } from '../helpers';
import { Inventory, InventoryType, Slot, SlotWithItem, State } from '../typings';
import { useAppSelector } from '../store';

export const moveSlotsReducer: CaseReducer<
  State,
  PayloadAction<{
    fromSlot: SlotWithItem;
    fromType: Inventory['type'];
    toSlot: Slot;
    toType: Inventory['type'];
    count: number;
  }>
> = (state, action) => {  
  const { fromSlot, fromType, toSlot, toType, count } = action.payload;
  const { sourceInventory, targetInventory } = getTargetInventory(state, fromType, toType);
  const pieceWeight = fromSlot.weight / fromSlot.count;
  const curTime = Math.floor(Date.now() / 1000);
  const fromItem = sourceInventory.items[fromSlot.slot - 1];

  if (fromType === InventoryType.PLAYEREQUIPMENT && toType === InventoryType.PLAYER) {
  } else {
    if (toType === InventoryType.PLAYEREQUIPMENT) {
      var found = false
      if (!fromItem.metadata || !fromItem.metadata.equipment_slot) {
        return
      }
      for (let index = 0; index <= fromItem.metadata.equipment_slot.length; index++) {
        const element = fromItem.metadata.equipment_slot[index];
        if (element == toSlot.slot) {
          found = true
          break
        }
      }
      if (!found) {
        return

      }
      targetInventory.items.forEach((element, index) => {
  
        if (fromItem.name === element.name && JSON.stringify(fromItem.metadata) === JSON.stringify(element.metadata)) {
          targetInventory.items[index] = {
            slot: element.slot,
          }
        }
      });
    }
    targetInventory.items[toSlot.slot - 1] = {
      ...fromItem,
      count: count,
      weight: pieceWeight * count,
      slot: toSlot.slot,
      durability: itemDurability(fromItem.metadata, curTime),
      metadata: fromItem.metadata
    }

  }
  if (fromType === InventoryType.SHOP || fromType === InventoryType.CRAFTING) return;
  if (fromType === InventoryType.PLAYER && toType === InventoryType.PLAYEREQUIPMENT) return;

  sourceInventory.items[fromSlot.slot - 1] =
    fromSlot.count - count > 0
      ? {
        ...sourceInventory.items[fromSlot.slot - 1],
        count: fromSlot.count - count,
        weight: pieceWeight * (fromSlot.count - count),
      }
      : {
        slot: fromSlot.slot,
      };
};
