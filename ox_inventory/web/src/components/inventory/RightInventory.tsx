import { useAppSelector } from '../../store';
import { selectRightInventory } from '../../store/inventory';
import InventoryGrid from './InventoryGrid';

const RightInventory: React.FC = () => {
  const rightInventory = useAppSelector(selectRightInventory);
  if (rightInventory.id && rightInventory.id != '') {
    return <InventoryGrid inventory={rightInventory} className='right-inventory' />;
  } else {
    return <></>
  }
};

export default RightInventory;
