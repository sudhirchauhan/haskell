module PrettyJSON (renderJValue) where

renderJValue :: JValue -> Doc

renderJValue (JBool True)  = text "true"
renderJValue (JBool False) = text "false"
renderJValue JNull         = text "null"
renderJValue (JNumber n)   = double n
renderJValue (JString s)   = string s

