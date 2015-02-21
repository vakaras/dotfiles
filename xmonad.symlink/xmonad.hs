import XMonad
import XMonad.Config.Gnome
import XMonad.Util.CustomKeys
import XMonad.Hooks.SetWMName

-- Change mod key from alt to super.
main = xmonad gnomeConfig
    { modMask = mod4Mask
      , keys  = customKeys delKeys insKeys
      , startupHook = setWMName "LG3D"
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
        ]
