module MLModel exposing (ml_model_init, Model)

import MLMsg
import Megaload


type alias Model =
    { node_families : List Megaload.NodeFamily
    }


empty_model : Model
empty_model =
    { node_families = [] }


ml_model_init : ( Model, Cmd MLMsg.Msg )
ml_model_init =
    ( empty_model, Cmd.none )
