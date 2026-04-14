import { ItemData } from '../typings/item';

export const Items: {
  [key: string]: ItemData | undefined;
} = {
  iron: {
    name: 'iron',
    close: false,
    label: 'IRON',
    stack: true,
    usable: true,
    count: 0,
    dropable: true,
    giveable: true
    // buttons: [{ label: 'Button 1', index: 0, group: 'Group A' },
    // { label: 'Button 2', index: 1, group: 'Group B' },
    // { label: 'Button 3', index: 2, group: 'Group A' },
    // { label: 'Button 4', index: 3 }],
  },
  water: {
    name: 'water',
    close: false,
    label: 'VODA VODA VODA VODA VODA VODA',
    stack: true,
    usable: true,
    count: 0,
    dropable: true,
    giveable: true,
    description: 'VODA VODA VODA VODA VODA VODAVODA VODA VODA VODA VODA VODAVODA VODA VODA VODA VODA VODAVODA VODA VODA VODA VODA VODAVODA VODA VODA VODA VODA VODAVODA VODA VODA VODA VODA VODAVODA VODA VODA VODA VODA VODAVODA VODA VODA VODA VODA VODAVODA VODA VODA VODA VODA VODA'
  },
  burger: {
    name: 'burger',
    close: false,
    label: 'BURGR',
    stack: false,
    usable: false,
    count: 0,
    dropable: true,
    giveable: true
  },
};
