import { Category } from './category';
import { Inventory } from './inventory';

export type State = {
  leftInventory: Inventory;
  rightInventory: Inventory;
  playerEquipment: Inventory
  itemAmount: number;
  currentItemAmount: number;
  shiftPressed: boolean;
  controlPressed: boolean;
  isBusy: boolean;
  additionalMetadata: Array<{ metadata: string; value: string }>;
  history?: {
    leftInventory: Inventory;
    rightInventory: Inventory;
  };
  seletedCategory: string;
  showPopup: boolean;
  confirmPopup: boolean;
  category: Category;
  categoryText: Array<string>
};
