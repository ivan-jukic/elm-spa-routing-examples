module Page.Home exposing (Msg, Model, init, update, view)

import Html exposing (Html, div, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


type Msg
    = Count


type alias Model =
    { clicks : Int
    , anyOtherProperty : String
    }


init : Model
init =
    { clicks = 0
    , anyOtherProperty = "with some value"
    }


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of        
        Count ->
            ( { model | clicks = model.clicks + 1 }, Cmd.none)


view : Model -> Html Msg
view model =
    div [ class "page -home"
        , onClick Count
        ]
        [ div [] [ text "This is home page." ]
        , div [] [ text <| "You've clicked here " ++ String.fromInt model.clicks ++  " times!" ]
        ]
