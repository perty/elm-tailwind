module Tw exposing (..)

import Html
import Html.Attributes exposing (class)


type Color
    = Gray
    | Indigo
    | White


type alias Weight =
    Int


type FontWeight
    = SemiBold
    | Bold


type Size
    = Lg
    | Xl
    | Xl2


type Tracking
    = Wide
    | Wider


colorToString : Color -> String
colorToString color =
    case color of
        Gray ->
            "gray"

        Indigo ->
            "indigo"

        White ->
            "white"


weightToString : Weight -> String
weightToString weight =
    String.fromInt weight


fontWeightToString : FontWeight -> String
fontWeightToString fw =
    case fw of
        SemiBold ->
            "semibold"

        Bold ->
            "bold"


sizeToString : Size -> String
sizeToString size =
    case size of
        Lg ->
            "lg"

        Xl ->
            "xl"

        Xl2 ->
            "2xl"


trackingToString : Tracking -> String
trackingToString t =
    case t of
        Wide ->
            "wide"

        Wider ->
            "wider"


h_10 : String
h_10 =
    "h-10"


inlineBlock =
    "inline-block"


uppercase =
    "uppercase"


marginTop : Int -> String
marginTop int =
    "mt-" ++ String.fromInt int


rounded : Size -> String
rounded size =
    "rounded-" ++ sizeToString size


shadow : Size -> String
shadow size =
    "shadow-" ++ sizeToString size


textSize : Size -> String
textSize size =
    "text-" ++ sizeToString size


fontWeight w =
    "font-" ++ fontWeightToString w


textColorW : Color -> Weight -> String
textColorW color weight =
    "text-" ++ colorToString color ++ "-" ++ weightToString weight


textColor : Color -> String
textColor color =
    "text-" ++ colorToString color


tracking size =
    "tracking-" ++ trackingToString size


backgroundColor : Color -> Weight -> String
backgroundColor color weight =
    "bg-" ++ colorToString color ++ "-" ++ weightToString weight


paddingY : Int -> String
paddingY int =
    "py-" ++ String.fromInt int


paddingX : Int -> String
paddingX int =
    "px-" ++ String.fromInt int


padding : Int -> String
padding int =
    "p-" ++ String.fromInt int


twClasses : List String -> Html.Attribute msg
twClasses strings =
    String.join " " strings |> class
