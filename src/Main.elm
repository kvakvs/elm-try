module Main exposing (..)

import Html.App as App
import MLView exposing (ml_view)
import MLUpdate exposing (ml_update)
import MLModel exposing (ml_model_init)


main =
    App.program
        { init = ml_model_init
        , view = ml_view
        , update = ml_update
        , subscriptions = \_ -> Sub.none
        }
