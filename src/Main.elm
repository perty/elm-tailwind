module Main exposing (main)

import Browser exposing (Document)
import Html exposing (a, div, h1, img, p, span, text)
import Html.Attributes exposing (alt, href, src)
import Tw


type alias Model =
    Int


type Msg
    = NoOp


main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }


init : () -> ( Model, Cmd msg )
init _ =
    ( 42, Cmd.none )


view : Model -> Document Msg
view _ =
    { title = "Document"
    , body =
        [ div [ Tw.twClasses [ Tw.grid, Tw.gridCols 2 ] ]
            [ div
                [ Tw.twClasses
                    [ Tw.paddingX Tw.P8
                    , Tw.paddingY Tw.P12
                    , Tw.maxWidth Tw.Md
                    , Tw.marginX Tw.MAuto
                    , Tw.breakPoint Tw.Sm <| Tw.maxWidth Tw.Xl
                    ]
                ]
                [ img [ Tw.twClasses [ Tw.height Tw.H10 ], src "img/logo.svg", alt "Workcation" ] []
                , img
                    [ Tw.twClasses
                        [ Tw.marginTop Tw.M6
                        , Tw.breakPoint Tw.Sm <| Tw.marginTop Tw.M8
                        , Tw.rounded Tw.Lg
                        , Tw.shadow Tw.Xl
                        , Tw.breakPoint Tw.Sm <| Tw.height Tw.H64
                        , Tw.breakPoint Tw.Sm <| Tw.width Tw.WFull
                        , Tw.breakPoint Tw.Sm <| Tw.objectFit Tw.Cover
                        , Tw.objectPosition Tw.Center
                        , Tw.breakPoint Tw.Lg <| Tw.hidden
                        ]
                    , src "img/beach-work.jpg"
                    , alt "woman working on the beach"
                    ]
                    []
                , h1
                    [ Tw.twClasses
                        [ Tw.marginTop Tw.M6
                        , Tw.breakPoint Tw.Sm <| Tw.marginTop Tw.M8
                        , Tw.breakPoint Tw.Sm <| Tw.textSize Tw.Xl4
                        , Tw.breakPoint Tw.Lg <| Tw.textSize Tw.Xl3
                        , Tw.textSize Tw.Xl2
                        , Tw.fontWeight Tw.Bold
                        , Tw.textColorW Tw.Gray Tw.C900
                        ]
                    ]
                    [ text "You can work from anywhere. "
                    , span [ Tw.twClasses [ Tw.textColorW Tw.Indigo Tw.C500 ] ] [ text "Take advantage of it." ]
                    ]
                , p
                    [ Tw.twClasses
                        [ Tw.marginTop Tw.M2
                        , Tw.textColorW Tw.Gray Tw.C600
                        , Tw.breakPoint Tw.Sm <| Tw.marginTop Tw.M4
                        , Tw.breakPoint Tw.Sm <| Tw.textSize Tw.Xl
                        ]
                    ]
                    [ text "Workcation helps you find work-friendly rentals in beautiful locations so you can enjoy some nice weather even when you're not on vacation."
                    ]
                , div
                    [ Tw.twClasses
                        [ Tw.marginTop Tw.M2
                        , Tw.breakPoint Tw.Sm <| Tw.marginTop Tw.M6
                        ]
                    ]
                    [ a
                        [ href "#"
                        , Tw.twClasses
                            [ Tw.backgroundColor Tw.Indigo Tw.C500
                            , Tw.paddingX Tw.P4
                            , Tw.paddingY Tw.P2
                            , Tw.textColor Tw.White
                            , Tw.inlineBlock
                            , Tw.rounded Tw.Lg
                            , Tw.shadow Tw.Lg
                            , Tw.uppercase
                            , Tw.tracking Tw.Wider
                            , Tw.fontWeight Tw.SemiBold
                            , Tw.textSize Tw.Sm
                            , Tw.breakPoint Tw.Sm <| Tw.textSizeReset
                            ]
                        ]
                        [ text "Book your escape" ]
                    ]
                ]
            , div []
                [ img
                    [ Tw.twClasses
                        [ Tw.hidden, Tw.breakPoint Tw.Lg <| Tw.block ]
                    , src "img/beach-work.jpg"
                    , alt "woman working on the beach"
                    ]
                    []
                ]
            ]
        ]
    }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )
