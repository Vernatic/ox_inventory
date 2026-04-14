import React, { useEffect } from 'react';
import { useIntersection } from '../../hooks/useIntersection';
import { useAppSelector } from '../../store';
import { selectPlayerEquipment, selectRightInventory } from '../../store/inventory';
import InventorySlot from './InventorySlot';
import { useSound } from '../utils/PlaySound';
import { fetchNui } from '../../utils/fetchNui';

const PlayerEquipment: React.FC = () => {
  const rightInventoryId = useAppSelector(selectRightInventory).id || '';
  const inventory = useAppSelector(selectPlayerEquipment);
  const [page, setPage] = React.useState(0);
  const PAGE_SIZE = 30;
  const { ref, entry } = useIntersection({ threshold: 0.5 });
  const { playSound } = useSound()
  const handleHover = () => {
    playSound('hover')
  };  
  function onClickWizardSkillHandler() {
    playSound('click')
    fetchNui('onClickWizardSkill', {});
  }
  function onClickSkillMeanageHandler() {
    playSound('click')
    fetchNui('onClickSkillMeanage', {});

  }

  return <>{rightInventoryId === '' &&
    <div id='player-equipment-wrapper'>
      <div id='equipment-slot-warpper'>
        <div id='player-equipment-image'></div>
        {inventory.items.slice(0, (page + 1) * PAGE_SIZE).map((item, index) => (
          <div className={"equipment-item-slot slot-" + (index + 1)} key={'equipment-item-slot-' + index}>
            <InventorySlot
              key={`${inventory.type}-${inventory.id}-${item.slot}`}
              item={item}
              ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
              inventoryType={inventory.type}
              inventoryGroups={inventory.groups}
              inventoryId={inventory.id}
              inventorySide={'left'}
            />
          </div>
        ))}

      </div>
      <div id='player-equipment-button-wrapper'>
        <div id='wizard-skill-button'
          onMouseEnter={() => { handleHover() }}
          onClick={() => { onClickWizardSkillHandler() }}
        >
          <div className='btn-img1'></div>
          <div className='btn-img2'></div>
          <span>WIZARD SKILL</span>
        </div>
        <div id='skill-manage-button'
          onMouseEnter={() => { handleHover() }}
          onClick={() => { onClickSkillMeanageHandler() }}
        >
          <div className='btn-img1'></div>
          <div className='btn-img2'></div>
          <span>SKILL MANAGE</span>
        </div>
      </div>
    </div >
  }</>;
};

export default PlayerEquipment;
