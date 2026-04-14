import React from 'react';
import { useExitListener } from '../../hooks/useExitListener';
import useNuiEvent from '../../hooks/useNuiEvent';
import { useAppDispatch } from '../../store';
import { closeContextMenu } from '../../store/contextMenu';
import { refreshSlots, setAdditionalMetadata, setupInventory } from '../../store/inventory';
import { closeTooltip } from '../../store/tooltip';
import type { Inventory as InventoryProps } from '../../typings';
import Tooltip from '../utils/Tooltip';
import Fade from '../utils/transitions/Fade';
import InputPopup from './InputPopup';
import InventoryContext from './InventoryContext';
import InventoryHotbar from './InventoryHotbar';
import LeftInventory from './LeftInventory';
import RightInventory from './RightInventory';
import { useSound } from '../utils/PlaySound';

const Inventory: React.FC = () => {
  const [inventoryVisible, setInventoryVisible] = React.useState(false);
  const { playSound } = useSound()
  const dispatch = useAppDispatch();

  useNuiEvent<boolean>('setInventoryVisible', (data) => {
    setInventoryVisible(data)
  });
  useNuiEvent<false>('closeInventory', () => {
    setInventoryVisible(false);
    dispatch(closeContextMenu());
    dispatch(closeTooltip());
    playSound('close')

  });
  useExitListener(setInventoryVisible);

  useNuiEvent<{
    leftInventory?: InventoryProps;
    rightInventory?: InventoryProps;
  }>('setupInventory', (data) => {
    dispatch(setupInventory(data));
    if (!inventoryVisible) {
      setInventoryVisible(true)
      playSound('open')
    }


  });

  useNuiEvent('refreshSlots', (data) => dispatch(refreshSlots(data)));

  useNuiEvent('displayMetadata', (data: Array<{ metadata: string; value: string }>) => {
    dispatch(setAdditionalMetadata(data));
  });

  return (
    <>
      <Fade in={inventoryVisible}>
        <div className='inventory-bg-wrapper'></div>
        <div className="inventory-wrapper">
          <InputPopup />
          <LeftInventory />
          {/* <InventoryControl /> */}
          <RightInventory />
          <Tooltip />
          <InventoryContext />
        </div>
      </Fade>
      <InventoryHotbar />
    </>
  );
};

export default Inventory;
