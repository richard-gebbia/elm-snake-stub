module Main exposing (..)

import Html exposing (Html, div)
import Styles exposing (styled)


-- Model


type alias Model =
    {}



-- Msg


type Msg
    = NoOp



-- Update


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model



-- View


view : Model -> Html Msg
view model =
    div [ styled [ Styles.container 200 ] ]
        [ div [ styled [ Styles.subContainer ] ]
            [ -- 2x2 arena
              div []
                [ div [ styled [ Styles.gridCell 100, Styles.ground ] ] []
                , div [ styled [ Styles.gridCell 100, Styles.fruit ] ] []
                ]
            , div []
                [ div [ styled [ Styles.gridCell 100, Styles.ground ] ] []
                , div [ styled [ Styles.gridCell 100, Styles.snake ] ] []
                ]
            ]
        ]



-- Main


main =
    Html.beginnerProgram { model = {}, view = view, update = update }
