import { useEffect, useRef } from 'react';
import { noop } from '../utils/misc';
import { fetchNui } from '../utils/fetchNui';
import { closeTooltip } from '../store/tooltip';
import { useAppDispatch, useAppSelector } from '../store';
import { closeContextMenu } from '../store/contextMenu';
import { selectShowPopup } from '../store/inventory';

type FrameVisibleSetter = (bool: boolean) => void;

const LISTENED_KEYS = ['Escape'];

// Basic hook to listen for key presses in NUI in order to exit
export const useExitListener = (visibleSetter: FrameVisibleSetter) => {
  const setterRef = useRef<FrameVisibleSetter>(noop);
  const dispatch = useAppDispatch();
  const showPopup = useAppSelector(selectShowPopup);

  useEffect(() => {
    setterRef.current = visibleSetter;
  }, [visibleSetter]);

  useEffect(() => {
    const keyHandler = (e: KeyboardEvent) => {
      if (LISTENED_KEYS.includes(e.code)) {
        if (showPopup) {
          return
        }
        setterRef.current(false);
        dispatch(closeTooltip());
        dispatch(closeContextMenu());
        fetchNui('exit');
      }
    };

    window.addEventListener('keyup', keyHandler);

    return () => window.removeEventListener('keyup', keyHandler);
  }, [showPopup]);
};
