import React, { useRef } from 'react';
import { Inventory } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import { getTotalWeight } from '../../helpers';
import { useAppSelector } from '../../store';
import { useIntersection } from '../../hooks/useIntersection';
import { selectRightInventory } from '../../store/inventory';
import Categories from './Categories';

const PAGE_SIZE = 30;

const InventoryGrid: React.FC<{ inventory: Inventory, className: string }> = ({ inventory, className }) => {
  const weight = React.useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items) * 1000) / 1000 : 0),
    [inventory.maxWeight, inventory.items]
  );
  const [page, setPage] = React.useState(0);
  const containerRef = useRef(null);
  const { ref, entry } = useIntersection({ threshold: 0.5 });
  const isBusy = useAppSelector((state) => state.inventory.isBusy);
  const rightInventoryId = useAppSelector(selectRightInventory).id || '';

  React.useEffect(() => {
    if (entry && entry.isIntersecting) {
      setPage((prev) => ++prev);
    }
  }, [entry]);
  return (
    <>
      <div className={rightInventoryId === '' ? "inventory-grid-wrapper " + className + ' only' : "inventory-grid-wrapper " + className} style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
        <div className="inventory-grid-header-wrapper">
          <p>{inventory.label}</p>
          <Categories inventorySide={className} />
        </div>
        <div className="inventory-grid-container" ref={containerRef}>
          <>
            {inventory.items.slice(0, (page + 1) * PAGE_SIZE).map((item, index) => (
              <InventorySlot
                key={`${inventory.type}-${inventory.id}-${item.slot}`}
                item={item}
                ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
                inventoryType={inventory.type}
                inventoryGroups={inventory.groups}
                inventoryId={inventory.id}
                inventorySide={(inventory.type == 'player' && className == 'left-inventory') ? 'left' : 'right'}
              />
            ))}
          </>
        </div>
        <div className='inventory-grid-border-left'></div>
        <div className='inventory-grid-border-right'></div>
        <div className='inventory-grid-footer-wrapper'>
          <WeightBar percent={inventory.maxWeight ? (weight / inventory.maxWeight) * 100 : 0} />
          {inventory.maxWeight && (
            <p className='weight-text'>
              {weight / 1000}/{inventory.maxWeight / 1000}kg
            </p>
          )}
        </div>
      </div>
    </>
  );
};

export default InventoryGrid;
