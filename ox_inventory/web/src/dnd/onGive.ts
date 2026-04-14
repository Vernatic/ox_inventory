import { store } from '../store';
import { setConfirmPopup, setCurrentItemAmount, setItemAmount, setShowPopup } from '../store/inventory';
import { Slot } from '../typings';
import { fetchNui } from '../utils/fetchNui';

export const onGive = async (item: Slot) => {

  const { inventory: state } = store.getState();

  const performActionsAfterCheckTests = async () => {
    return new Promise<void>((resolve) => {
      store.dispatch(setShowPopup(true));
      store.dispatch(setConfirmPopup(false));
      store.dispatch(setCurrentItemAmount(item.count || 0));
      store.dispatch(setItemAmount(1));
      function checkTests(): void {
        const { inventory: data } = store.getState();
        if (!data.showPopup && data.confirmPopup) {
          resolve(); // Resolve the promise when conditions are met
        } else {
          setTimeout(checkTests, 100);
        }
      }
      checkTests();
    });
  };

  await performActionsAfterCheckTests();

  const {
    inventory: { itemAmount },
  } = store.getState();  
  fetchNui('giveItem', { slot: item.slot, count: itemAmount });
};
