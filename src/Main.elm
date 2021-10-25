module Main exposing (main)

import Browser exposing (Document)
import Html exposing (div, h1, img, span, text)
import Html.Attributes exposing (alt, class, src)
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
view model =
    { title = "Document"
    , body =
        [ div [ class "p-8" ]
            [ img [ class Tw.h_10, src "img/logo.svg", alt "Workcation" ] []
            , img [ Tw.twClasses [ Tw.mt_6, Tw.rounded_lg, Tw.shadow_xl ], src "img/beach-work.jpg", alt "woman working on the beach" ] []
            , h1 [ Tw.twClasses [ Tw.mt_6, Tw.text_2xl, Tw.font_bold, Tw.text_color Tw.Gray 900 ] ]
                [ text "You can work from anywhere."
                , span [ class (Tw.text_color Tw.Indigo 500) ] [ text "Take advantage of it." ]
                ]
            ]
        ]
    }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )
