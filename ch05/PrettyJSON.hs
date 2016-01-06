module PrettyJSON (renderJValue) where

renderJValue :: JValue -> Doc

renderJValue (JBool True)  = text "true"
renderJValue (JBool False) = text "false"
renderJValue JNull         = text "null"
renderJValue (JBool True)  = text "true"
renderJValue (JBool True)  = text "true"

