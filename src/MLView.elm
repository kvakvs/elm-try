module MLView exposing (ml_view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import MLModel exposing (MLModel)
import MLMsg


ml_view : MLModel -> Html MLMsg.Msg
ml_view model =
    div []
        [ input [ type' "text", placeholder "Name", onInput MLMsg.Name ] []
        , input [ type' "password", placeholder "Password", onInput MLMsg.Password ] []
        , input [ type' "password", placeholder "Re-enter Password", onInput MLMsg.PasswordAgain ] []
        , viewValidation model
        ]


viewValidation : MLModel -> Html msg
viewValidation model =
    let
        ( color, message ) =
            if model.password == model.passwordAgain then
                ( "green", "OK" )
            else
                ( "red", "Passwords do not match!" )
    in
        div [ style [ ( "color", color ) ] ] [ text message ]
