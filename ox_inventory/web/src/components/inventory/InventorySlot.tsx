import { useMergeRefs } from '@floating-ui/react';
import React, { useRef } from 'react';
import { useDrag, useDragDropManager, useDragLayer, useDrop } from 'react-dnd';
import { onBuy } from '../../dnd/onBuy';
import { onCraft } from '../../dnd/onCraft';
import { onDrop } from '../../dnd/onDrop';
import { onUse } from '../../dnd/onUse';
import { canCraftItem, canPurchaseItem, getItemUrl, isSlotWithItem } from '../../helpers';
import useNuiEvent from '../../hooks/useNuiEvent';
import { ItemsPayload } from '../../reducers/refreshSlots';
import { useAppDispatch, useAppSelector } from '../../store';
import { openContextMenu } from '../../store/contextMenu';
import { getCategory, selectRightInventory, seletedCategory } from '../../store/inventory';
import { Items } from '../../store/items';
import { Locale } from '../../store/locale';
import { closeTooltip, openTooltip } from '../../store/tooltip';
import { DragSource, Inventory, InventoryType, Slot, SlotWithItem } from '../../typings';
import { useSound } from '../utils/PlaySound';

interface SlotProps {
  inventoryId: Inventory['id'];
  inventoryType: Inventory['type'];
  inventoryGroups: Inventory['groups'];
  item: Slot;
  inventorySide: string;
}

const InventorySlot: React.ForwardRefRenderFunction<HTMLDivElement, SlotProps> = (
  { item, inventoryId, inventoryType, inventoryGroups, inventorySide },
  ref
) => {
  const manager = useDragDropManager();
  const dispatch = useAppDispatch();
  const timerRef = useRef<NodeJS.Timer | null>(null);
  const { playSound } = useSound()
  const canDrag = React.useCallback(() => {
    return canPurchaseItem(item, { type: inventoryType, groups: inventoryGroups }) && canCraftItem(item, inventoryType);
  }, [item, inventoryType, inventoryGroups]);
  const rightInventoryId = useAppSelector(selectRightInventory).id || '';
  const dragMonitor = useDragLayer((monitor) => ({
    // Access the item being dragged through the monitor
    draggedItem: monitor.getItem(), // This will give you the dragged item information
  }));
  const selectedCate = useAppSelector(seletedCategory);
  const category = useAppSelector(getCategory);

  function inCategory(item: string) {
    var found = true
    const data = category[selectedCate]
    if (!data) {
      return false
    }
    if (data.type == 'blacklist') {
      found = false
    }
    if (!data.list[item]) {
      found = !found
    }
    return found
  }

  const isCanDrop = () => {
    {
      if (dragMonitor && dragMonitor.draggedItem) {
        const draggedItem = dragMonitor.draggedItem.item
        const inventory = dragMonitor.draggedItem.inventory
        if (
          (draggedItem.slot !== item.slot || inventory !== inventoryType) &&
          inventoryType !== InventoryType.SHOP &&
          inventoryType !== InventoryType.CRAFTING
        ) {
          if (inventoryType === InventoryType.PLAYEREQUIPMENT) {
            if (draggedItem.metadata && draggedItem.metadata.equipment_slot) {
              const slot = draggedItem.metadata.equipment_slot
              var found = false
              for (let index = 0; index <= slot.length; index++) {
                const element = slot[index];
                if (element == item.slot) {
                  found = true
                  break
                }
              }
              return found
            }
            return false
          }
          return true;
        }
      }
      return true;
    }
  }

  const [{ isDragging }, drag] = useDrag<DragSource, void, { isDragging: boolean }>(
    () => ({
      type: 'SLOT',
      collect: (monitor) => ({
        isDragging: monitor.isDragging(),
      }),
      item: () =>
        isSlotWithItem(item, inventoryType !== InventoryType.SHOP)
          ? {
            dragingIten: item,
            inventory: inventoryType,
            item: {
              name: item.name,
              slot: item.slot,
              metadata: item.metadata
            },
            image: item?.name && `url(${getItemUrl(item) || 'none'}`,
          }
          : null,
      canDrag,
    }),
    [inventoryType, item]
  );

  const [{ isOver }, drop] = useDrop<DragSource, void, { isOver: boolean }>(
    () => ({
      accept: 'SLOT',
      collect: (monitor) => ({
        isOver: monitor.isOver(),
      }),
      drop: (source) => {
        dispatch(closeTooltip());

        switch (source.inventory) {
          case InventoryType.SHOP:
            onBuy(source, { inventory: inventoryType, item: { slot: item.slot } });
            break;
          case InventoryType.CRAFTING:
            onCraft(source, { inventory: inventoryType, item: { slot: item.slot } });
            break;
          default:
            playSound('click')
            onDrop(source, { inventory: inventoryType, item: { slot: item.slot } });
            break;
        }
      },
      canDrop: (source) => {
        if (
          (source.item.slot !== item.slot || source.inventory !== inventoryType) &&
          inventoryType !== InventoryType.SHOP &&
          inventoryType !== InventoryType.CRAFTING
        ) {
          return true;
        } else {
          return false;
        }
      }
    }),
    [inventoryType, item]
  );

  useNuiEvent('refreshSlots', (data: { items?: ItemsPayload | ItemsPayload[] }) => {
    if (!isDragging && !data.items) return;
    if (!Array.isArray(data.items)) return;

    const itemSlot = data.items.find(
      (dataItem) => dataItem.item.slot === item.slot && dataItem.inventory === inventoryId
    );

    if (!itemSlot) return;

    manager.dispatch({ type: 'dnd-core/END_DRAG' });
  });

  const connectRef = (element: HTMLDivElement) => drag(drop(element));

  const handleContext = (event: React.MouseEvent<HTMLDivElement>) => {
    event.preventDefault();
    if (inventoryType !== 'player' || !isSlotWithItem(item)) return;
    playSound('click')

    dispatch(openContextMenu({ item, coords: { x: event.clientX, y: event.clientY } }));
  };

  const handleClick = (event: React.MouseEvent<HTMLDivElement>) => {
    dispatch(closeTooltip());
    if (timerRef.current) clearTimeout(Number(timerRef.current));
    if (event.ctrlKey && isSlotWithItem(item) && inventoryType !== 'shop' && inventoryType !== 'crafting') {
      playSound('click')
      onDrop({ item: item, inventory: inventoryType });
    } else if (event.altKey && isSlotWithItem(item) && inventoryType === 'player') {
      playSound('click')
      onUse(item);
    }
  };

  const handleHover = () => {
    playSound('hover')
  };

  const refs = useMergeRefs([connectRef, ref]);

  return (
    <div
      ref={refs}
      onContextMenu={handleContext}
      onClick={handleClick}
      onMouseEnter={handleHover}
      className={inventoryType === 'player' && inventorySide === 'left' && item.slot <= 5 ? 'inventory-slot fast-slot fast-slot-' + item.slot : "inventory-slot " + inventoryType}
      style={{
        border: isOver ? '1px dashed rgba(255,255,255,0.4)' : '',
        opacity: isDragging || !isCanDrop() || !inCategory(item.name || '') ? 0.4 : 1.0,
      }}
    >
      <div className={`item-img`}
        style={{
          backgroundImage: `url(${item?.name ? getItemUrl(item as SlotWithItem) : 'none'}`,
        }}
      ></div>
      <div className={`item-frame ${isSlotWithItem(item) ? 'hasItem' : ''}`}></div>
      {inventoryType === 'player' && inventorySide === 'left' && item.slot <= 5 && <div className={`inventory-slot-number ${isSlotWithItem(item) ? 'hasItem' : ''}`}>{item.slot}</div>}
      {isSlotWithItem(item) && (
        <div
          className='item-slot-wrapper'
          onMouseEnter={() => {
            timerRef.current = setTimeout(() => {
              dispatch(openTooltip({ item, inventoryType }));
            }, 200);
          }}
          onMouseLeave={() => {
            dispatch(closeTooltip());
            if (timerRef.current) {
              clearTimeout(Number(timerRef.current));
              timerRef.current = null;
            }
          }}
        >

          <div className="inventory-slot-label-box">
            <div className="inventory-slot-label-text">
              {item.metadata?.label ? item.metadata.label : Items[item.name]?.label || item.name}
            </div>
          </div>
          <div
            className={
              inventoryType === 'player' && inventorySide === 'left' && rightInventoryId === '' && item.slot <= 5 ? 'item-hotslot-header-wrapper' : 'item-slot-header-wrapper'
            }
          >
            {inventoryType !== InventoryType.PLAYEREQUIPMENT && <div className="item-slot-info-wrapper">
              {item.slot > 5 && <p className='item-weight-text'>
                {item.weight > 0
                  ? `${(item.weight / 1000).toLocaleString('en-us', {
                    minimumFractionDigits: 2,
                  })}`
                  : ''}
              </p>}
              <p>{item.count ? item.count.toLocaleString('en-us') : ''}</p>
            </div>}
          </div>
          {inventoryType !== 'shop' && item?.durability !== undefined && (
            <div className='item-durability'>
              <div className='item-durability-bar' style={{ background: item.durability > 0 ? (item.durability <= 25 ? '#FF5757' : '#44B8A4') : '' }}></div>
              <div className='item-durability-bar' style={{ background: item.durability > 25 ? '#44B8A4' : '' }}></div>
              <div className='item-durability-bar' style={{ background: item.durability > 50 ? '#44B8A4' : '' }}></div>
              <div className='item-durability-bar' style={{ background: item.durability > 75 ? '#44B8A4' : '' }}></div>
            </div>
          )}
          <div>
            {inventoryType === 'shop' && item?.price !== undefined && (
              <>
                {item?.currency !== 'money' && item.currency !== 'black_money' && item.price > 0 && item.currency ? (
                  <div className="item-slot-currency-wrapper">
                    <img
                      src={item.currency ? getItemUrl(item.currency) : 'none'}
                      alt="item-image"
                      style={{
                        imageRendering: '-webkit-optimize-contrast',
                        height: 'auto',
                        width: '2vh',
                        backfaceVisibility: 'hidden',
                        transform: 'translateZ(0)',
                      }}
                    />
                    <p>{item.price.toLocaleString('en-us')}</p>
                  </div>
                ) : (
                  <>
                    {item.price > 0 && (
                      <div
                        className="item-slot-price-wrapper"
                        style={{ color: item.currency === 'money' || !item.currency ? '#2ECC71' : '#E74C3C' }}
                      >
                        <p>
                          {Locale.$ || '$'}
                          {item.price.toLocaleString('en-us')}
                        </p>
                      </div>
                    )}
                  </>
                )}
              </>
            )}

          </div>
        </div>
      )}
    </div>
  );
};

export default React.memo(React.forwardRef(InventorySlot));
