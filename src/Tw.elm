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
    = C50
    | C100
    | C200
    | C300
    | C400
    | C500
    | C600
    | C700
    | C800
    | C900


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
    | Xl3
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


type Width
    = W0
    | Wpx
    | W0_5
    | W1
    | W1_5
    | W2
    | W2_5
    | W3
    | W3_5
    | W4
    | W5
    | W6
    | W7
    | W8
    | W9
    | W10
    | W11
    | W12
    | W14
    | W16
    | W20
    | W24
    | W28
    | W32
    | W36
    | W40
    | W44
    | W48
    | W52
    | W56
    | W60
    | W64
    | W72
    | W80
    | W96
    | WAuto
    | W1To2
    | W1To3
    | W2To3
    | W1To4
    | W2To4
    | W3To4
    | W1To5
    | W2To5
    | W3To5
    | W4To5
    | W1To6
    | W2To6
    | W3To6
    | W4To6
    | W5To6
    | W1To12
    | W2To12
    | W3To12
    | W4To12
    | W5To12
    | W6To12
    | W7To12
    | W8To12
    | W9To12
    | W10To12
    | W11To12
    | WFull
    | WScreen
    | WMin
    | WMax


type ObjectFit
    = Contain
    | Cover
    | Fill
    | None
    | ScaleDown


objectFitToString : ObjectFit -> String
objectFitToString o =
    case o of
        Contain ->
            "contain"

        Cover ->
            "cover"

        Fill ->
            "fill"

        None ->
            "none"

        ScaleDown ->
            "scale-down"


type ObjectPosition
    = Bottom
    | Center
    | Left
    | LeftBottom
    | LeftTop
    | Right
    | RightBottom
    | RightTop
    | Top


objectPositionToString : ObjectPosition -> String
objectPositionToString p =
    case p of
        Bottom ->
            "bottom"

        Center ->
            "center"

        Left ->
            "left"

        LeftBottom ->
            "left-bottom"

        LeftTop ->
            "left-top"

        Right ->
            "right"

        RightBottom ->
            "right-bottom"

        RightTop ->
            "right-top"

        Top ->
            "top"


objectPosition : ObjectPosition -> String
objectPosition p =
    "object-" ++ objectPositionToString p


objectFit : ObjectFit -> String
objectFit o =
    "object-" ++ objectFitToString o


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
        C50 ->
            "50"

        C100 ->
            "100"

        C200 ->
            "200"

        C300 ->
            "300"

        C400 ->
            "400"

        C500 ->
            "500"

        C600 ->
            "600"

        C700 ->
            "700"

        C800 ->
            "800"

        C900 ->
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


widthToString : Width -> String
widthToString w =
    case w of
        W0 ->
            "0"

        Wpx ->
            "px"

        W0_5 ->
            "0.5"

        W1 ->
            "1"

        W1_5 ->
            "1.5"

        W2 ->
            "2"

        W2_5 ->
            "2.5"

        W3 ->
            "3"

        W3_5 ->
            "3.5"

        W4 ->
            "4"

        W5 ->
            "5"

        W6 ->
            "6"

        W7 ->
            "7"

        W8 ->
            "8"

        W9 ->
            "9"

        W10 ->
            "10"

        W11 ->
            "11"

        W12 ->
            "12"

        W14 ->
            "14"

        W16 ->
            "16"

        W20 ->
            "20"

        W24 ->
            "24"

        W28 ->
            "28"

        W32 ->
            "32"

        W36 ->
            "36"

        W40 ->
            "40"

        W44 ->
            "44"

        W48 ->
            "48"

        W52 ->
            "52"

        W56 ->
            "56"

        W60 ->
            "60"

        W64 ->
            "64"

        W72 ->
            "72"

        W80 ->
            "80"

        W96 ->
            "96"

        WAuto ->
            "auto"

        W1To2 ->
            "1/2"

        W1To3 ->
            "1/3"

        W2To3 ->
            "2/3"

        W1To4 ->
            "1/4"

        W2To4 ->
            "2/4"

        W3To4 ->
            "3/4"

        W1To5 ->
            "1/5"

        W2To5 ->
            "2/5"

        W3To5 ->
            "3/5"

        W4To5 ->
            "4/5"

        W1To6 ->
            "1/6"

        W2To6 ->
            "2/6"

        W3To6 ->
            "3/6"

        W4To6 ->
            "4/6"

        W5To6 ->
            "5/6"

        W1To12 ->
            "1/12"

        W2To12 ->
            "2/12"

        W3To12 ->
            "3/12"

        W4To12 ->
            "4/12"

        W5To12 ->
            "5/12"

        W6To12 ->
            "6/12"

        W7To12 ->
            "7/12"

        W8To12 ->
            "8/12"

        W9To12 ->
            "9/12"

        W10To12 ->
            "10/12"

        W11To12 ->
            "11/12"

        WFull ->
            "full"

        WScreen ->
            "screen"

        WMin ->
            "min"

        WMax ->
            "max"


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

        Xl3 ->
            "3xl"

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


width : Width -> String
width w =
    "w-" ++ widthToString w


inlineBlock : String
inlineBlock =
    "inline-block"


inline : String
inline =
    "inline"


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


hidden : String
hidden =
    "hidden"


block : String
block =
    "block"


absolute : String
absolute =
    "absolute"


grid : String
grid =
    "grid"


gridCols : Int -> String
gridCols n =
    "grid-cols-" ++ String.fromInt n


inset : Int -> String
inset n =
    "inset-" ++ String.fromInt n


breakPoint : Size -> String -> String
breakPoint size class =
    sizeToString size ++ ":" ++ class


twClasses : List String -> Html.Attribute msg
twClasses strings =
    String.join " " strings |> class
