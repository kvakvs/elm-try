module Main exposing (..)

import Html.App as App
import Mouse
import Keyboard

import MLView exposing (ml_view)
import MLUpdate exposing (ml_update)
import MLModel
import MLMsg


main =
    App.program
        { init = MLModel.ml_model_init
        , view = ml_view
        , update = ml_update
        , subscriptions = ml_subscriptions
        }

ml_subscriptions : MLModel.Model -> Sub MLMsg.Msg
ml_subscriptions model =
    Sub.batch
        [ Mouse.clicks MLMsg.MouseMsg
        , Keyboard.downs MLMsg.KeyMsg
        ]