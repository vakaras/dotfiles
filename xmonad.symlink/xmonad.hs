import XMonad
import XMonad.Config.Gnome
import XMonad.Util.CustomKeys
import XMonad.Hooks.SetWMName

-- Change mod key from alt to super.
main = xmonad gnomeConfig
    { modMask = mod4Mask
      , keys  = customKeys delKeys insKeys
      , startupHook = do
          setWMName "LG3D"
          -- Set lithuanian keyboard layout.
          -- Remap some keys.
          spawn "setxkbmap lt us && xmodmap ~/.xmodmaprc"
          -- Enable two finger horizontal scrolling.
          spawn "synclient HorizTwoFingerScroll=1"
          -- Set wallpaper.
          spawn "feh --bg-center /home/downloads/Darbastalis/life-1366-768.png"
    }
    where
      delKeys :: XConfig l -> [(KeyMask, KeySym)]
      delKeys XConfig {modMask = modm} =
        -- Delete nothing.
        []
      insKeys :: XConfig l -> [((KeyMask, KeySym), X ())]
      insKeys conf@(XConfig {modMask = modm}) =
        -- Insert command for locking screen. SHIFT + CTRL + l
        [
          ((shiftMask .|. controlMask, xK_l ), spawn "gnome-screensaver-command -l")
          , ((modm, xK_bracketright ), spawn "amixer -D pulse sset Master 5%+")
          , ((modm, xK_bracketleft ), spawn "amixer -D pulse sset Master 5%-")
        ]
