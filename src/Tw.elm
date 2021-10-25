module Tw exposing (..)

import Html
import Html.Attributes exposing (class)


type Color
    = Indigo
    | Gray


type alias Weight =
    Int


colorToString : Color -> String
colorToString color =
    case color of
        Indigo ->
            "indigo"

        Gray ->
            "gray"


weightToString : Weight -> String
weightToString weight =
    String.fromInt weight


h_10 : String
h_10 =
    "h-10"


mt_6 =
    "mt-6"


rounded_lg =
    "rounded-lg"


shadow_xl =
    "shadow-xl"


text_2xl =
    "text-2xl"


font_bold =
    "font-bold"


text_color : Color -> Weight -> String
text_color color weight =
    "text-" ++ colorToString color ++ "-" ++ weightToString weight


twClasses : List String -> Html.Attribute msg
twClasses strings =
    String.join " " strings |> class
