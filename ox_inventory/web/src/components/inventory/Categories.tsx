import { useAppDispatch, useAppSelector } from '../../store';
import { getCategory, getCategoryText, seletedCategory, setSeletedCategory } from '../../store/inventory';
import { Category } from '../../typings/category';
import { useSound } from '../utils/PlaySound';

const Categories: React.FC<{ inventorySide: string }> = ({ inventorySide }) => {
  const { playSound } = useSound()
  const dispatch = useAppDispatch();
  const selected = useAppSelector(seletedCategory);
  const categories: Category = useAppSelector(getCategory);
  const categoryText: Array<string> = useAppSelector(getCategoryText);
  const handleHover = () => {
    playSound('hover')
  };
  function isSelected(name: string) {
    if (selected == name) {
      return true
    }
  }
  function onClickHandler(name: string) {
    if (selected !== name) {
      playSound('click')
      dispatch(setSeletedCategory(name));
    }
  }

  function generateCtegory() {
    const result: Array<any> = []
    for (let index = 0; index < categoryText.length; index++) {
      const element = categoryText[index];
      result.push(<div key={element} className={`category-item ${isSelected(element) ? 'selected' : ''}`}
        onMouseEnter={handleHover}
        onClick={() => { onClickHandler(element) }}
      >{element}</div>)
    }
    return result
  }
  return <div className='inventory-category-wrapper'>
    {inventorySide === 'left-inventory' && <>
      {generateCtegory()}
    </>
    }
  </div>;
};

export default Categories;
