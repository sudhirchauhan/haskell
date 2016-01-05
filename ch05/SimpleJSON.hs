module SimpleJSON
       (
         JValue(..)
         ,getString
         ,getNumber
         ,getBool
         ,getObject
         ,getArray
          )where
-- JSON data structure

data JValue = JString String
            | JNumber Double
            | JBool Bool
            | JNull
            | JObject [(String,JValue)]
            | JArray [JValue]
              deriving (Eq, Ord, Show)


getString :: JValue -> Maybe String
getString (JString s) = Just s
getString _           = Nothing

getNumber :: JValue  -> Maybe Double
getNumber (JNumber n)  = Just n
getNumber _            = Nothing

getBool :: JValue -> Maybe Bool
getBool (JBool n)    = Just n
getBool _            = Nothing

getObject :: JValue -> Maybe [(String, JValue)]
getObject (JObject [(x, y)]) = Just [(x,y)]
getObject _                  = Nothing

getArray :: JValue -> Maybe [JValue]
getArray (JArray xs) = Just xs
getArray _           = Nothing

isNull :: JValue -> Bool
isNull v   = v ==JNull
