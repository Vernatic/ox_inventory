import InventoryComponent from './components/inventory';
import useNuiEvent from './hooks/useNuiEvent';
import { Items } from './store/items';
import { Locale } from './store/locale';
import { setImagePath } from './store/imagepath';
import { selectLeftInventory, selectPlayerEquipment, setCategory, setCategoryText, setupInventory } from './store/inventory';
import { Inventory } from './typings';
import { useAppDispatch, useAppSelector } from './store';
import { debugData } from './utils/debugData';
import DragPreview from './components/utils/DragPreview';
import { fetchNui } from './utils/fetchNui';
import { useDragDropManager } from 'react-dnd';
import KeyPress from './components/utils/KeyPress';
import { useEffect } from 'react';
import React from 'react';
import { Category } from './typings/category';

debugData([
  {
    action: 'setupInventory',
    data: {
      leftInventory: {
        id: 'test',
        type: 'player',
        slots: 200,
        label: 'INVENTORY',
        weight: 3000,
        maxWeight: 5000,
        groups: { ['test']: 0 },
        items: [
          {
            slot: 1,
            name: 'iron',
            weight: 3000,
            metadata: {
              description: `name: <span style="color: red;">Svetozar Miletic  \n Gender: Male</span>`,
              ammo: 3,
              mustard: '60%',
              ketchup: '30%',
              mayo: '10%',
            },
            count: 5,
          },
          { slot: 2, name: 'powersaws', weight: 0, count: 1, metadata: { durability: 50 } },
          { slot: 3, name: 'copper', weight: 100, count: 12, metadata: { type: 'Special' } },
          {
            slot: 4,
            name: 'water',
            weight: 100,
            count: 1,
            metadata: { description: 'Generic item description', durability: 50 },
          },
          { slot: 5, name: 'water', weight: 100, count: 10 },
          {
            slot: 6,
            name: 'backwoods',
            weight: 100,
            count: 1,
            metadata: {
              label: 'Russian Cream',
              imageurl: 'https://i.imgur.com/2xHhTTz.png',
            },
          },
          {
            slot: 7, name: 'water', weight: 100, count: 1,
            metadata: { durability: 50, equipment_slot: [1, 2, 3], category: ['potion'] }
          },
          {
            slot: 8, name: 'iron', weight: 100, count: 1,
            metadata: { durability: 50, equipment_slot: [1, 2, 3], type: 'test' }
          },
          {
            slot: 9, name: 'burger', weight: 100, count: 10,
            metadata: { equipment_slot: [1, 2, 3, 4], category: ['potion'] }
          },
        ],
      },
      // rightInventory: {
      //   id: 'shop',
      //   type: 'container',
      //   slots: 5000,
      //   label: 'Bob Smith',
      //   weight: 3000,
      //   maxWeight: 5000,
      //   items: [
      //     {
      //       slot: 1,
      //       name: 'water',
      //       weight: 500,
      //       price: 300,
      //       ingredients: {
      //         iron: 5,
      //         copper: 12,
      //         powersaw: 0.1,
      //       },
      //       metadata: {
      //         description: 'Simple lockpick that breaks easily and can pick basic door locks',
      //         durability: 50
      //       },
      //     },
      //   ],
      // },
    },
  },
]);

interface Slot {
  name?: any;
  metadata?: any;
}

const App: React.FC = () => {
  const dispatch = useAppDispatch();
  const manager = useDragDropManager();
  const [uiLoaded, setUiLoaded] = React.useState(false);

  useNuiEvent<{
    locale: { [key: string]: string };
    items: typeof Items;
    leftInventory: Inventory;
    imagepath: string;
    category: Array<any>;
  }>('init', ({ locale, items, leftInventory, imagepath, category }) => {
    for (const name in locale) Locale[name] = locale[name];
    for (const name in items) Items[name] = items[name];
    setImagePath(imagepath);
    dispatch(setupInventory({ leftInventory }));

    const categoryData: Category = {}
    const categoryTextData: Array<string> = []
    for (let i = 0; i < category.length; i++) {
      const { name, type, list } = category[i];
      categoryData[name] = {
        type,
        list: list,
      };
      categoryTextData.push(name)
    }

    dispatch(setCategory(categoryData));
    dispatch(setCategoryText(categoryTextData));
    const playerEquipment = localStorage.getItem('playerEquipment');
    if (playerEquipment) {
      const result = JSON.parse(playerEquipment)
      console.log(result);

      if (result) {
        dispatch(setupInventory({ playerEquipment: result }));
      }
    }
    setUiLoaded(true)
  });

  fetchNui('uiLoaded', {});

  useNuiEvent('closeInventory', () => {
    manager.dispatch({ type: 'dnd-core/END_DRAG' });
  });
  const playerEquipment = useAppSelector(selectPlayerEquipment);
  const leftInventory = useAppSelector(selectLeftInventory);

  useEffect(() => {
    if (!uiLoaded) {
      return
    }
    fetchNui('updateEquipment', playerEquipment);
    localStorage.setItem('playerEquipment', JSON.stringify(playerEquipment));
  }, [playerEquipment, uiLoaded]);

  useEffect(() => {
    if (!uiLoaded) {
      return
    }
    const dumpPlayerEquipment = {
      ...playerEquipment,
      items: [...playerEquipment.items]
    };

    var hasUpdate = false
    for (let index = 0; index < dumpPlayerEquipment.items.length; index++) {
      const element = dumpPlayerEquipment.items[index];

      if (element.name) {
        const foundItem = leftInventory.items.find((item: Slot) => item.name === element.name && JSON.stringify(item?.metadata) === JSON.stringify(element?.metadata));
        if (!foundItem) {
          dumpPlayerEquipment.items[index] = {
            slot: element.slot
          }
          hasUpdate = true
        }
      }
    }
    if (hasUpdate) {
      dispatch(setupInventory({ playerEquipment: dumpPlayerEquipment }));
    }
  }, [leftInventory, uiLoaded, playerEquipment]);


  return (
    <div className="app-wrapper">
      <InventoryComponent />
      <DragPreview />
      <KeyPress />
    </div>
  );
};

addEventListener("dragstart", function (event) {
  event.preventDefault()
})

export default App;
