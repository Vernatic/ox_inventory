import React from 'react';
import { onDrop } from '../../dnd/onDrop';
import { onGive } from '../../dnd/onGive';
import { onUse } from '../../dnd/onUse';
import { isSlotWithItem } from '../../helpers';
import { useAppSelector } from '../../store';
import { Items } from '../../store/items';
import { Locale } from '../../store/locale';
import { fetchNui } from '../../utils/fetchNui';
import { setClipboard } from '../../utils/setClipboard';
import { useSound } from '../utils/PlaySound';
import { Menu, MenuItem } from '../utils/menu/Menu';

interface DataProps {
  action: string;
  component?: string;
  slot?: number;
  serial?: string;
  id?: number;
}

interface Button {
  label: string;
  index: number;
  group?: string;
}

interface Group {
  groupName: string | null;
  buttons: ButtonWithIndex[];
}

interface ButtonWithIndex extends Button {
  index: number;
}

interface GroupedButtons extends Array<Group> { }

const InventoryContext: React.FC = () => {
  const contextMenu = useAppSelector((state) => state.contextMenu);
  const item = contextMenu.item;
  const itemData = Items[contextMenu.item?.name || ''];

  const { playSound } = useSound()

  const handleClick = (data: DataProps) => {
    if (!item) return;
    playSound('click')
    switch (data && data.action) {
      case 'use':
        onUse({ name: item.name, slot: item.slot });
        break;
      case 'give':
        onGive({ name: item.name, slot: item.slot, count: item.count });
        break;
      case 'drop':
        isSlotWithItem(item) && onDrop({ item: item, inventory: 'player' });
        break;
      case 'remove':
        fetchNui('removeComponent', { component: data?.component, slot: data?.slot });
        break;
      case 'removeAmmo':
        fetchNui('removeAmmo', item.slot);
        break;
      case 'copy':
        setClipboard(data.serial || '');
        break;
      case 'custom':
        fetchNui('useButton', { id: (data?.id || 0) + 1, slot: item.slot });
        break;
    }
  };

  const groupButtons = (buttons: any): GroupedButtons => {

    return buttons.reduce((groups: Group[], button: Button, index: number) => {
      if (button.group) {
        const groupIndex = groups.findIndex((group) => group.groupName === button.group);
        if (groupIndex !== -1) {
          groups[groupIndex].buttons.push({ ...button, index });
        } else {
          groups.push({
            groupName: button.group,
            buttons: [{ ...button, index }],
          });
        }
      } else {
        groups.push({
          groupName: null,
          buttons: [{ ...button, index }],
        });
      }
      return groups;
    }, []);
  };

  return (
    <>
      <Menu>
        {itemData && itemData.usable && <MenuItem onMouseOver={() => { playSound('hover') }} onClick={() => handleClick({ action: 'use' })} label={Locale.ui_use || 'Use'} />}
        {itemData && itemData.giveable && <MenuItem onMouseOver={() => { playSound('hover') }} onClick={() => handleClick({ action: 'give' })} label={Locale.ui_give || 'Give'} />}
        {itemData && itemData.dropable && <MenuItem onMouseOver={() => { playSound('hover') }} onClick={() => handleClick({ action: 'drop' })} label={Locale.ui_drop || 'Drop'} />}
        {itemData && (itemData.usable || itemData.giveable || itemData.dropable) && <div className='bottom-line'></div>}
        {item && item.metadata?.ammo > 0 && (
          <MenuItem onMouseOver={() => { playSound('hover') }} onClick={() => handleClick({ action: 'removeAmmo' })} label={Locale.ui_remove_ammo || 'Remove Ammo'} />
        )}
        {item && item.metadata?.serial && (
          <MenuItem
            onMouseOver={() => { playSound('hover') }}
            onClick={() => handleClick({ action: 'copy', serial: item.metadata?.serial })}
            label={Locale.ui_copy || 'Copy'}
          />
        )}
        {item && item.metadata?.components && item.metadata?.components.length > 0 && (
          <Menu label={Locale.ui_removeattachments}>
            {item &&
              item.metadata?.components.map((component: string, index: number) => (
                <MenuItem
                  key={index}
                  onMouseOver={() => { playSound('hover') }}
                  onClick={() => handleClick({ action: 'remove', component, slot: item.slot })}
                  label={Items[component]?.label || 'Remove Component'}
                />
              ))}
          </Menu>
        )}
        {((item && item.name && Items[item.name]?.buttons?.length) || 0) > 0 && (
          <>
            {item &&
              item.name &&
              groupButtons(Items[item.name]?.buttons).map((group: Group, index: number) => (
                <React.Fragment key={index}>
                  {group.groupName ? (
                    <Menu label={group.groupName}>
                      {group.buttons.map((button: Button) => (
                        <MenuItem
                          key={button.index}
                          onMouseOver={() => { playSound('hover') }}
                          onClick={() => handleClick({ action: 'custom', id: button.index })}
                          label={button.label || 'custom'}
                        />
                      ))}
                    </Menu>
                  ) : (
                    group.buttons.map((button: Button) => (
                      <MenuItem
                        key={button.index}
                        onMouseOver={() => { playSound('hover') }}
                        onClick={() => handleClick({ action: 'custom', id: button.index })}
                        label={button.label || 'custom'}
                      />
                    ))
                  )}
                </React.Fragment>
              ))}
          </>
        )}
      </Menu>
    </>
  );
};

export default InventoryContext;
