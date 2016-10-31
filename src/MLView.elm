module MLView exposing (ml_view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import MLModel
import MLMsg
import API.Topo as API_Topo


ml_view : MLModel.Model -> Html MLMsg.Msg
ml_view model =
    div []
        [ text (toString API_Topo.get_node_families)
        , viewValidation model
        ]


viewValidation : MLModel.Model -> Html MLMsg.Msg
viewValidation model =
    div [] []
