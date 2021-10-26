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
        [ div [ Tw.twClasses [ Tw.padding Tw.P8, Tw.paddingY Tw.P12 ] ]
            [ img [ Tw.twClasses [ Tw.h_10 ], src "img/logo.svg", alt "Workcation" ] []
            , img [ Tw.twClasses [ Tw.marginTop Tw.M6, Tw.rounded Tw.Lg, Tw.shadow Tw.Xl ], src "img/beach-work.jpg", alt "woman working on the beach" ] []
            , h1
                [ Tw.twClasses
                    [ Tw.marginTop Tw.M6
                    , Tw.textSize Tw.Xl2
                    , Tw.fontWeight Tw.Bold
                    , Tw.textColorW Tw.Gray Tw.W900
                    ]
                ]
                [ text "You can work from anywhere."
                , span [ Tw.twClasses [ Tw.textColorW Tw.Indigo Tw.W500 ] ] [ text "Take advantage of it." ]
                ]
            , p [ Tw.twClasses [ Tw.marginTop Tw.M2, Tw.textColorW Tw.Gray Tw.W600 ] ]
                [ text "Workcation helps you find work-friendly rentals in beautiful locations so you can enjoy some nice weather even when you're not on vacation."
                ]
            , div [ Tw.twClasses [ Tw.marginTop Tw.M2 ] ]
                [ a
                    [ href "#"
                    , Tw.twClasses
                        [ Tw.backgroundColor Tw.Indigo Tw.W500
                        , Tw.paddingX Tw.P4
                        , Tw.paddingY Tw.P2
                        , Tw.textColor Tw.White
                        , Tw.inlineBlock
                        , Tw.rounded Tw.Lg
                        , Tw.shadow Tw.Lg
                        , Tw.uppercase
                        , Tw.tracking Tw.Wider
                        , Tw.fontWeight Tw.SemiBold
                        ]
                    ]
                    [ text "Book your escape" ]
                ]
            ]
        ]
    }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )
