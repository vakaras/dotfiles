import XMonad
import XMonad.Config.Gnome
import XMonad.Util.CustomKeys

-- Change mod key from alt to super.
main = xmonad gnomeConfig
    { modMask = mod4Mask
      , keys  = customKeys delKeys insKeys
    }
    where
      delKeys :: XConfig l -> [(KeyMask, KeySym)]
      delKeys XConfig {modMask = modm} =
        -- Delete nothing.
        []
      insKeys :: XConfig l -> [((KeyMask, KeySym), X ())]
      insKeys conf@(XConfig {modMask = modm}) =
        -- Insert nothing.
        []
