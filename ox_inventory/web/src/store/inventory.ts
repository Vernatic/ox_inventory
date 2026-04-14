import { createSlice, current, isFulfilled, isPending, isRejected, PayloadAction } from '@reduxjs/toolkit';
import type { RootState } from '.';
import { Slot, State } from '../typings';
import {
  moveSlotsReducer,
  refreshSlotsReducer,
  setupInventoryReducer,
  stackSlotsReducer,
  swapSlotsReducer,
} from '../reducers';
import { Category } from '../typings/category';

const initialState: State = {
  leftInventory: {
    id: '',
    type: '',
    slots: 0,
    maxWeight: 0,
    items: [],
  },
  rightInventory: {
    id: '',
    type: '',
    slots: 0,
    maxWeight: 0,
    items: [],
  },
  additionalMetadata: new Array(),
  itemAmount: 1,
  currentItemAmount: 0,
  shiftPressed: false,
  controlPressed: false,
  isBusy: false,
  playerEquipment: {
    id: 'playerEquipment',
    type: 'playerEquipment',
    slots: 8,
    items: [
      { slot: 1 },
      { slot: 2 },
      { slot: 3 },
      { slot: 4 },
      { slot: 5 },
      { slot: 6 },
      { slot: 7 },
      { slot: 8 },
    ],
    maxWeight: undefined,
    label: undefined,
    groups: undefined
  },
  seletedCategory: 'ALL',
  showPopup: false,
  confirmPopup: false,
  category: {
    ['ALL']: { type: 'blacklist', list: {} },
    ['POTION']: { type: 'whitelist', list: { 'water': true, 'burger': true } },
    ['WAND']: { type: 'whitelist', list: {} },
    ['CLOTHES']: { type: 'whitelist', list: {} },
    ['BOX']: { type: 'whitelist', list: {} },
    ['EQUPMENT']: { type: 'whitelist', list: {} },
    ['OTHER']: { type: 'whitelist', list: {} },
  },
  categoryText: ['ALL', 'POTION', 'WAND', 'CLOTHES', 'BOX', 'EQUPMENT', 'OTHER']
};

export const inventorySlice = createSlice({
  name: 'inventory',
  initialState,
  reducers: {
    stackSlots: stackSlotsReducer,
    swapSlots: swapSlotsReducer,
    setupInventory: setupInventoryReducer,
    moveSlots: moveSlotsReducer,
    refreshSlots: refreshSlotsReducer,
    setAdditionalMetadata: (state, action: PayloadAction<Array<{ metadata: string; value: string }>>) => {
      const metadata = [];

      for (let i = 0; i < action.payload.length; i++) {
        const entry = action.payload[i];
        if (!state.additionalMetadata.find((el) => el.value === entry.value)) metadata.push(entry);
      }

      state.additionalMetadata = [...state.additionalMetadata, ...metadata];
    },
    setItemAmount: (state, action: PayloadAction<number>) => {
      state.itemAmount = action.payload;
    },
    setCurrentItemAmount: (state, action: PayloadAction<number>) => {
      state.currentItemAmount = action.payload;
    },
    setShiftPressed: (state, action: PayloadAction<boolean>) => {
      state.shiftPressed = action.payload;
    },
    setControlPressed: (state, action: PayloadAction<boolean>) => {
      state.controlPressed = action.payload;
    },
    setContainerWeight: (state, action: PayloadAction<number>) => {
      const container = state.leftInventory.items.find((item) => item.metadata?.container === state.rightInventory.id);

      if (!container) return;

      container.weight = action.payload;
    },
    setCategory: (state, action: PayloadAction<Category>) => {
      state.category = action.payload;
    },
    setCategoryText: (state, action: PayloadAction<Array<string>>) => {
      state.categoryText = action.payload;
    },
    setSeletedCategory: (state, action: PayloadAction<string>) => {
      state.seletedCategory = action.payload;
    },
    setShowPopup: (state, action: PayloadAction<boolean>) => {
      state.showPopup = action.payload;
    },
    setConfirmPopup: (state, action: PayloadAction<boolean>) => {
      state.confirmPopup = action.payload;
    }
  },
  extraReducers: (builder) => {
    builder.addMatcher(isPending, (state) => {
      state.isBusy = true;

      state.history = {
        leftInventory: current(state.leftInventory),
        rightInventory: current(state.rightInventory),
      };
    });
    builder.addMatcher(isFulfilled, (state) => {
      state.isBusy = false;
    });
    builder.addMatcher(isRejected, (state) => {
      if (state.history && state.history.leftInventory && state.history.rightInventory) {
        state.leftInventory = state.history.leftInventory;
        state.rightInventory = state.history.rightInventory;
      }
      state.isBusy = false;
    });
  },
});

export const {
  setAdditionalMetadata,
  setItemAmount,
  setShiftPressed,
  setControlPressed,
  setupInventory,
  swapSlots,
  moveSlots,
  stackSlots,
  refreshSlots,
  setContainerWeight,
  setCategory,
  setCategoryText,
  setSeletedCategory,
  setShowPopup,
  setConfirmPopup,
  setCurrentItemAmount,
} = inventorySlice.actions;
export const selectLeftInventory = (state: RootState) => state.inventory.leftInventory;
export const selectPlayerEquipment = (state: RootState) => state.inventory.playerEquipment;
export const selectRightInventory = (state: RootState) => state.inventory.rightInventory;
export const selectItemAmount = (state: RootState) => state.inventory.itemAmount;
export const selectCurrentItemAmount = (state: RootState) => state.inventory.currentItemAmount;
export const selectShowPopup = (state: RootState) => state.inventory.showPopup;
export const selectConfirmPopup = (state: RootState) => state.inventory.confirmPopup;
export const selectIsBusy = (state: RootState) => state.inventory.isBusy;
export const seletedCategory = (state: RootState) => state.inventory.seletedCategory;
export const getCategory = (state: RootState) => state.inventory.category;
export const getCategoryText = (state: RootState) => state.inventory.categoryText;

export default inventorySlice.reducer;
