export type CategoryDetail = {
  type: string
  list: {
    [key: string]: boolean;
  };
};

export type Category = {
  [key: string]: CategoryDetail;
};
