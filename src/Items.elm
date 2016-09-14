module Items exposing (..)

import Story exposing (..)


type MyItem
    = Envelope
    | Podium
    | Mic
    | ExitSign
    | ElmSticker


items : MyItem -> ItemInfo
items item =
    case item of
        ExitSign ->
            itemInfo "emergency exit sign" "The green letters glow like an illuminated caption of your thoughts:  \"What am I doing here, and more importantly, how do I get out?\""

        Envelope ->
            itemInfo "thick envelope" "You found it crammed in your pocket, but you don't recognize it."

        Podium ->
            itemInfo "podium" "The podium is on the stage, facing the audience.  Right in the spotlight."

        Mic ->
            itemInfo "microphone" "\"Testing one, two.\" Yup, it works fine."

        ElmSticker ->
            itemInfo "Elm sticker" "![](img/elm-sticker.png)"
