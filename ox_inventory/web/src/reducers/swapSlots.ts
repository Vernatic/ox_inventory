import { CaseReducer, PayloadAction } from '@reduxjs/toolkit';
import { getTargetInventory, itemDurability } from '../helpers';
import { Inventory, InventoryType, SlotWithItem, State } from '../typings';

export const swapSlotsReducer: CaseReducer<
  State,
  PayloadAction<{
    fromSlot: SlotWithItem;
    fromType: Inventory['type'];
    toSlot: SlotWithItem;
    toType: Inventory['type'];
  }>
> = (state, action) => {
  const { fromSlot, fromType, toSlot, toType } = action.payload;
  const { sourceInventory, targetInventory } = getTargetInventory(state, fromType, toType);
  const curTime = Math.floor(Date.now() / 1000);
  const fromItem = sourceInventory.items[fromSlot.slot - 1];
  const toItem = targetInventory.items[toSlot.slot - 1];
  if (fromType === InventoryType.PLAYEREQUIPMENT && toType === InventoryType.PLAYER) {
    sourceInventory.items[fromSlot.slot - 1] =
    {
      slot: fromSlot.slot,
    }
    return
  }
  if (fromType === InventoryType.PLAYER && toType === InventoryType.PLAYEREQUIPMENT) {

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
    if (found) {
      targetInventory.items.forEach((element, index) => {
        if (fromItem.name === element.name && JSON.stringify(fromItem.metadata) === JSON.stringify(element.metadata)) {
          targetInventory.items[index] = {
            slot: element.slot,
          }
        }
      });
      targetInventory.items[toSlot.slot - 1] =
      {
        ...sourceInventory.items[fromSlot.slot - 1],
        slot: toSlot.slot,
        durability: itemDurability(fromSlot.metadata, curTime),
        metadata: fromItem.metadata
      }
    }
    return
  }

  // else {
  if (toType === InventoryType.PLAYEREQUIPMENT) {
    var fromfound = false
    var tofound = false
    if (!fromItem.metadata || !fromItem.metadata.equipment_slot || !toItem.metadata || !toItem.metadata.equipment_slot) {
      return
    }
    for (let index = 0; index <= fromItem.metadata.equipment_slot.length; index++) {
      const element = fromItem.metadata.equipment_slot[index];
      const element2 = toItem.metadata.equipment_slot[index];
      if (element == toSlot.slot) {
        fromfound = true
      }
      if (element2 == fromItem.slot) {
        tofound = true
      }
    }

    if (!tofound || !fromfound) {
      return
    }
  }
  [sourceInventory.items[fromSlot.slot - 1], targetInventory.items[toSlot.slot - 1]] = [
    {
      ...targetInventory.items[toSlot.slot - 1],
      slot: fromSlot.slot,
      durability: itemDurability(toSlot.metadata, curTime),
      metadata: toSlot.metadata
    },
    {
      ...sourceInventory.items[fromSlot.slot - 1],
      slot: toSlot.slot,
      durability: itemDurability(fromSlot.metadata, curTime),
      metadata: fromSlot.metadata

    },
  ];
}


// };
