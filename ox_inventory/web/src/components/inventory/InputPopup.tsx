import { useEffect } from 'react';
import { useAppDispatch, useAppSelector } from '../../store';
import { selectCurrentItemAmount, selectItemAmount, selectShowPopup, setConfirmPopup, setItemAmount, setShowPopup } from '../../store/inventory';
import { useSound } from '../utils/PlaySound';
import React from 'react';

const InputPopup: React.FC = () => {
  const { playSound } = useSound()
  const dispatch = useAppDispatch();
  const showPopup = useAppSelector(selectShowPopup);
  const itemAmount = useAppSelector(selectItemAmount);
  const currentItemAmount = useAppSelector(selectCurrentItemAmount);
  const handleHover = () => {
    playSound('hover');
  };

  function onClickCancelHandler() {
    playSound('click');
    dispatch(setShowPopup(false));
  }

  function onClickConfirmHandler() {
    playSound('click');
    dispatch(setShowPopup(false));
    dispatch(setConfirmPopup(true));
  }

  function onClickMinHandler() {
    if (itemAmount !== 1) {
      playSound('click');
      dispatch(setItemAmount(1));
    }
  }

  function onClickMaxHandler() {
    if (itemAmount !== currentItemAmount) {
      playSound('click');
      dispatch(setItemAmount(currentItemAmount));
    }
  }

  const inputHandler = (event: React.ChangeEvent<HTMLInputElement>) => {
    var newAmount =
      isNaN(event.target.valueAsNumber) || event.target.valueAsNumber < 0
        ? 0
        : Math.floor(event.target.valueAsNumber);
    if (newAmount > currentItemAmount) {
      newAmount = currentItemAmount
    }
    playSound('hover');
    dispatch(setItemAmount(newAmount));
  };

  useEffect(() => {
    const keyHandler = (e: KeyboardEvent) => {
      if (!showPopup) {
        return;
      }
      if (['Enter', 'NumpadEnter'].includes(e.code)) {
        playSound('click');
        dispatch(setShowPopup(false));
        dispatch(setConfirmPopup(true));
      }
    };

    window.addEventListener('keyup', keyHandler);

    return () => window.removeEventListener('keyup', keyHandler);
  }, [showPopup]);


  return <div className={`input-popup-wrapper ${showPopup ? 'show' : 'hide'}`}>
    <div className='input-popup-detail-wrapper'>
      <div className='input-popup-header'>
        <span>MÄÄRÄ</span>
      </div>
      <div className='input-popup-body'>
        <div className='input-amount-wrapper'>
          <div className='min-btn'
            onMouseEnter={() => { handleHover() }}
            onClick={() => { onClickMinHandler() }}
          >
            <span>MIN</span></div>
          <input id='input-amont' type="number" min={0} value={itemAmount}
            onChange={inputHandler}
          />
          <div className='max-btn'
            onMouseEnter={() => { handleHover() }}
            onClick={() => { onClickMaxHandler() }}
          ><span>MAX</span></div>
        </div>
        <div className='input-button-panal'>
          <div className='cancel-btn'
            onMouseEnter={() => { handleHover() }}
            onClick={() => { onClickCancelHandler() }}
          ><span>PERUUTA</span></div>
          <div className='confirm-btn'
            onMouseEnter={() => { handleHover() }}
            onClick={() => { onClickConfirmHandler() }}

          ><span>VAHVISTA</span></div>
        </div>
      </div>
    </div>
  </div>;
};

export default InputPopup;
