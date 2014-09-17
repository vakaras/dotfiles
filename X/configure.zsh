if [ -n "${DISPLAY+x}" ]; then
  # Set lithuanian keyboard layout.
  setxkbmap lt us
  # Remap some keys.
  xmodmap ~/.xmodmaprc
  # Enable two finger horizontal scrolling.
  synclient HorizTwoFingerScroll=1
fi
