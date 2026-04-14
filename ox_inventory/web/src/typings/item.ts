export type ItemData = {
  name: string;
  label: string;
  stack: boolean;
  usable: boolean;
  dropable: boolean;
  giveable: boolean;
  close: boolean;
  count: number;
  description?: string;
  buttons?: string[];
  ammoName?: string;
  image?: string;
};
