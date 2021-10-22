module Main exposing (main)

import Browser exposing (Document)
import Html exposing (h1, text)
import Html.Attributes exposing (class)


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
    { title = "The title "
    , body =
        [ h1 [ class "text-4xl text-blue-500 text-center font-bold" ] [ text "Hello there!" ]
        ]
    }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )
