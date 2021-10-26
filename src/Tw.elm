module Tw exposing (..)

import Html
import Html.Attributes exposing (class)


type Color
    = Gray
    | Red
    | Yellow
    | Green
    | Blue
    | Indigo
    | Purple
    | Pink
    | White


type ColorWeight
    = W50
    | W100
    | W200
    | W300
    | W400
    | W500
    | W600
    | W700
    | W800
    | W900


type Padding
    = P0
    | Ppx
    | P0_5
    | P1
    | P1_5
    | P2
    | P2_5
    | P3
    | P3_5
    | P4
    | P5
    | P6
    | P7
    | P8
    | P9
    | P10
    | P11
    | P12
    | P14
    | P16
    | P20
    | P24
    | P28
    | P32
    | P36
    | P40
    | P44
    | P48
    | P52
    | P56
    | P60
    | P64
    | P72
    | P80
    | P96


type PositiveMargin
    = M0
    | Mpx
    | M0x5
    | M1
    | M1x5
    | M2
    | M2x5
    | M3
    | M3x5
    | M4
    | M5
    | M6
    | M7
    | M8
    | M9
    | M10
    | M11
    | M12
    | M14
    | M16
    | M20
    | M24
    | M28
    | M32
    | M36
    | M40
    | M44
    | M48
    | M52
    | M56
    | M60
    | M64
    | M72
    | M80
    | M96
    | MAuto


type FontWeight
    = SemiBold
    | Bold


type Size
    = Sm
    | Md
    | Lg
    | Xl
    | Xl2
    | Xl4


type Height
    = H0
    | Hpx
    | H0_5
    | H1
    | H1_5
    | H2
    | H2_5
    | H3
    | H3_5
    | H4
    | H5
    | H6
    | H7
    | H8
    | H9
    | H10
    | H11
    | H12
    | H14
    | H16
    | H20
    | H24
    | H28
    | H32
    | H36
    | H40
    | H44
    | H48
    | H52
    | H56
    | H60
    | H64
    | H72
    | H80
    | H96
    | HAuto
    | H1To2
    | H1To3
    | H2To3
    | H1To4
    | H2To4
    | H3To4
    | H1To5
    | H2To5
    | H3To5
    | H4To5
    | H1To6
    | H2To6
    | H3To6
    | H4To6
    | H5To6
    | HFull
    | HScreen


type Tracking
    = Wide
    | Wider


colorToString : Color -> String
colorToString color =
    case color of
        Gray ->
            "gray"

        Red ->
            "red"

        Yellow ->
            "yellow"

        Green ->
            "green"

        Blue ->
            "blue"

        Indigo ->
            "indigo"

        Purple ->
            "purple"

        Pink ->
            "pink"

        White ->
            "white"


weightToString : ColorWeight -> String
weightToString weight =
    case weight of
        W50 ->
            "50"

        W100 ->
            "100"

        W200 ->
            "200"

        W300 ->
            "300"

        W400 ->
            "400"

        W500 ->
            "500"

        W600 ->
            "600"

        W700 ->
            "700"

        W800 ->
            "800"

        W900 ->
            "900"


paddingToString : Padding -> String
paddingToString p =
    case p of
        P0 ->
            "0"

        Ppx ->
            "px"

        P0_5 ->
            "0.5"

        P1 ->
            "1"

        P1_5 ->
            "1.5"

        P2 ->
            "2"

        P2_5 ->
            ""

        P3 ->
            "3"

        P3_5 ->
            "3.5"

        P4 ->
            "4"

        P5 ->
            "5"

        P6 ->
            "6"

        P7 ->
            "7"

        P8 ->
            "8"

        P9 ->
            "9"

        P10 ->
            "10"

        P11 ->
            "11"

        P12 ->
            "12"

        P14 ->
            "14"

        P16 ->
            "16"

        P20 ->
            "20"

        P24 ->
            "24"

        P28 ->
            "28"

        P32 ->
            "32"

        P36 ->
            "36"

        P40 ->
            "40"

        P44 ->
            "44"

        P48 ->
            "48"

        P52 ->
            "52"

        P56 ->
            "56"

        P60 ->
            "60"

        P64 ->
            "64"

        P72 ->
            "72"

        P80 ->
            "80"

        P96 ->
            "96"


positiveMarginToStr : PositiveMargin -> String
positiveMarginToStr positiveMargin =
    case positiveMargin of
        M0 ->
            "0"

        Mpx ->
            "px"

        M0x5 ->
            "0.5"

        M1 ->
            "1"

        M1x5 ->
            "1.5"

        M2 ->
            "2"

        M2x5 ->
            "2.5"

        M3 ->
            "3"

        M3x5 ->
            "3.5"

        M4 ->
            "4"

        M5 ->
            "5"

        M6 ->
            "6"

        M7 ->
            "7"

        M8 ->
            "8"

        M9 ->
            "9"

        M10 ->
            "10"

        M11 ->
            "11"

        M12 ->
            "12"

        M14 ->
            "14"

        M16 ->
            "16"

        M20 ->
            "20"

        M24 ->
            "24"

        M28 ->
            "28"

        M32 ->
            "32"

        M36 ->
            "36"

        M40 ->
            "40"

        M44 ->
            "44"

        M48 ->
            "48"

        M52 ->
            "52"

        M56 ->
            "56"

        M60 ->
            "60"

        M64 ->
            "64"

        M72 ->
            "72"

        M80 ->
            "80"

        M96 ->
            "96"

        MAuto ->
            "auto"


heightToString : Height -> String
heightToString h =
    case h of
        H0 ->
            "0"

        Hpx ->
            "px"

        H0_5 ->
            "0.5"

        H1 ->
            "1"

        H1_5 ->
            "1.5"

        H2 ->
            "2"

        H2_5 ->
            "2.5"

        H3 ->
            "3"

        H3_5 ->
            "3.5"

        H4 ->
            "4"

        H5 ->
            "5"

        H6 ->
            "6"

        H7 ->
            "7"

        H8 ->
            "8"

        H9 ->
            "9"

        H10 ->
            "10"

        H11 ->
            "11"

        H12 ->
            "12"

        H14 ->
            "14"

        H16 ->
            "16"

        H20 ->
            "20"

        H24 ->
            "24"

        H28 ->
            "28"

        H32 ->
            "32"

        H36 ->
            "36"

        H40 ->
            "40"

        H44 ->
            "44"

        H48 ->
            "48"

        H52 ->
            "52"

        H56 ->
            "56"

        H60 ->
            "60"

        H64 ->
            "64"

        H72 ->
            "72"

        H80 ->
            "80"

        H96 ->
            "96"

        HAuto ->
            "Auto"

        H1To2 ->
            "1/2"

        H1To3 ->
            "1/3"

        H2To3 ->
            "2/3"

        H1To4 ->
            "1/4"

        H2To4 ->
            "2/4"

        H3To4 ->
            "3/4"

        H1To5 ->
            "1/5"

        H2To5 ->
            "2/5"

        H3To5 ->
            "3/5"

        H4To5 ->
            "4/5"

        H1To6 ->
            "1/6"

        H2To6 ->
            "2/6"

        H3To6 ->
            "3/6"

        H4To6 ->
            "4/6"

        H5To6 ->
            "5/6"

        HFull ->
            "full"

        HScreen ->
            "screen"


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
        Sm ->
            "sm"

        Md ->
            "md"

        Lg ->
            "lg"

        Xl ->
            "xl"

        Xl2 ->
            "2xl"

        Xl4 ->
            "4xl"


trackingToString : Tracking -> String
trackingToString t =
    case t of
        Wide ->
            "wide"

        Wider ->
            "wider"


height : Height -> String
height h =
    "h-" ++ heightToString h


inlineBlock : String
inlineBlock =
    "inline-block"


uppercase : String
uppercase =
    "uppercase"


marginTop : PositiveMargin -> String
marginTop pm =
    "mt-" ++ positiveMarginToStr pm


marginX : PositiveMargin -> String
marginX pm =
    "mx-" ++ positiveMarginToStr pm


rounded : Size -> String
rounded size =
    "rounded-" ++ sizeToString size


shadow : Size -> String
shadow size =
    "shadow-" ++ sizeToString size


textSize : Size -> String
textSize size =
    "text-" ++ sizeToString size


textSizeReset : String
textSizeReset =
    "text-base"


fontWeight w =
    "font-" ++ fontWeightToString w


textColorW : Color -> ColorWeight -> String
textColorW color weight =
    "text-" ++ colorToString color ++ "-" ++ weightToString weight


textColor : Color -> String
textColor color =
    "text-" ++ colorToString color


tracking size =
    "tracking-" ++ trackingToString size


backgroundColor : Color -> ColorWeight -> String
backgroundColor color weight =
    "bg-" ++ colorToString color ++ "-" ++ weightToString weight


paddingY : Padding -> String
paddingY p =
    "py-" ++ paddingToString p


paddingX : Padding -> String
paddingX p =
    "px-" ++ paddingToString p


padding : Padding -> String
padding p =
    "p-" ++ paddingToString p


maxWidth : Size -> String
maxWidth size =
    "max-w-" ++ sizeToString size


breakPoint : Size -> String -> String
breakPoint size class =
    sizeToString size ++ ":" ++ class


twClasses : List String -> Html.Attribute msg
twClasses strings =
    String.join " " strings |> class
