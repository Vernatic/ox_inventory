import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';
import InventoryGrid from './InventoryGrid';
import PlayerEquipment from './PlayerEquipment';

const LeftInventory: React.FC = () => {
  const leftInventory = useAppSelector(selectLeftInventory);
  
  return <><InventoryGrid inventory={leftInventory} className='left-inventory' />
    <PlayerEquipment /></>;
};

export default LeftInventory;
