module MLModel exposing (ml_model_init, MLModel)

import MLMsg


type alias MLModel =
    { name : String
    , password : String
    , passwordAgain : String
    }


ml_model : MLModel
ml_model =
    { name = "", password = "", passwordAgain = "" }


empty_model : MLModel
empty_model =
    { name = "", password = "", passwordAgain = "" }


ml_model_init : ( MLModel, Cmd MLMsg.Msg )
ml_model_init =
    empty_model ! []
