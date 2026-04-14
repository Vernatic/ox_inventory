import { useState } from 'react';
import useNuiEvent from '../../hooks/useNuiEvent';
import click from "../../sound/click.wav"
import openSound from "../../sound/open.wav"
import closeSound from "../../sound/close.wav"
import hoverSound from "../../sound/hover.wav"
const soundFile = new Map()

soundFile.set('click', (click))
soundFile.set('open', (openSound))
soundFile.set('close', (closeSound))
soundFile.set('hover', (hoverSound))

export function useSound() {
  const [soundVolume, setSoundVolume] = useState(0.5);

  useNuiEvent<number>('setSoundVolume', setSoundVolume);

  function playSound(soundName: string) {
    if (soundFile.get(soundName)) {
      const sound = new Audio(soundFile.get(soundName));
      sound.volume = soundVolume;
      sound.play();
    }
  }
  return { playSound };
}