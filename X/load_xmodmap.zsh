if [ -n "${DISPLAY+x}" ]; then
  # Load X server settings.
  xmodmap ~/.xmodmaprc
fi
