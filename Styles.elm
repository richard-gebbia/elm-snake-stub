module Styles exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (style)
import Css exposing (..)
import Css.Colors as Colors


type alias Group =
    List Style


styled : List Group -> Attribute msg
styled styles =
    asPairs (List.concat styles) |> style


container : Int -> Group
container w =
    [ margin2 (px 0) auto, width (px (toFloat w)) ]


subContainer : Group
subContainer =
    [ position absolute ]


gridCell : Int -> Group
gridCell cellSize =
    [ float left
    , marginRight (px 0)
    , width (px (toFloat cellSize))
    , height (px (toFloat cellSize))
    , borderColor Colors.gray
    , borderWidth (px 1)
    ]


snake : Group
snake =
    [ backgroundColor Colors.green ]


ground : Group
ground =
    [ backgroundColor Colors.black ]


fruit : Group
fruit =
    [ backgroundColor Colors.red ]
