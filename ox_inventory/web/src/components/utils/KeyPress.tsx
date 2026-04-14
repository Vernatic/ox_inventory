import { useEffect } from 'react';
import { setControlPressed, setShiftPressed } from '../../store/inventory';
import useKeyPress from '../../hooks/useKeyPress';
import { useAppDispatch } from '../../store';

const KeyPress: React.FC = () => {
  const dispatch = useAppDispatch();
  const shiftPressed = useKeyPress('Shift');
  const controlPressed = useKeyPress('Control');

  useEffect(() => {
    dispatch(setShiftPressed(shiftPressed));
  }, [shiftPressed, dispatch]);

  useEffect(() => {
    dispatch(setControlPressed(controlPressed));    
  }, [controlPressed, dispatch]);


  return <></>;
};

export default KeyPress;
