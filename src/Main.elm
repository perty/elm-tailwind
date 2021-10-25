module Main exposing (main)

import Browser exposing (Document)
import Html exposing (a, div, h1, img, p, span, text)
import Html.Attributes exposing (alt, class, href, src)
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
        [ div [ Tw.twClasses [ Tw.padding 8, Tw.paddingY 12 ] ]
            [ img [ class Tw.h_10, src "img/logo.svg", alt "Workcation" ] []
            , img [ Tw.twClasses [ Tw.marginTop 6, Tw.rounded Tw.Lg, Tw.shadow Tw.Xl ], src "img/beach-work.jpg", alt "woman working on the beach" ] []
            , h1
                [ Tw.twClasses
                    [ Tw.marginTop 6
                    , Tw.textSize Tw.Xl2
                    , Tw.fontWeight Tw.Bold
                    , Tw.textColorW Tw.Gray 900
                    ]
                ]
                [ text "You can work from anywhere."
                , span [ class (Tw.textColorW Tw.Indigo 500) ] [ text "Take advantage of it." ]
                ]
            , p [ Tw.twClasses [ Tw.marginTop 2, Tw.textColorW Tw.Gray 600 ] ]
                [ text "Workcation helps you find work-friendly rentals in beautiful locations so you can enjoy some nice weather even when you're not on vacation."
                ]
            , div [ Tw.twClasses [ Tw.marginTop 2 ] ]
                [ a
                    [ href "#"
                    , Tw.twClasses
                        [ Tw.backgroundColor Tw.Indigo 500
                        , Tw.paddingX 4
                        , Tw.paddingY 2
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
