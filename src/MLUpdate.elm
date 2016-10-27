module MLUpdate exposing (ml_update)

import MLModel
import MLMsg


ml_update : MLMsg.Msg -> MLModel.Model -> ( MLModel.Model, Cmd MLMsg.Msg )
ml_update msg model =
    case msg of
        MLMsg.M_Nothing ->
            model ! []



-- case msg of
--     MLMsg.Name name ->
--         { model | name = name }
--             ! []
--
--     MLMsg.Password password ->
--         { model | password = password }
--             ! []
--
--     MLMsg.PasswordAgain password ->
--         { model | passwordAgain = password }
--             ! []
