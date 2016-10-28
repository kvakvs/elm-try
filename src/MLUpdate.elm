module MLUpdate exposing (ml_update)

import MLModel
import MLMsg


ml_update : MLMsg.Msg -> MLModel.Model -> ( MLModel.Model, Cmd MLMsg.Msg )
ml_update msg model =
    case msg of
        MLMsg.M_Nothing ->
            ( model, Cmd.none )

        MLMsg.M_APIError ->
            ( model, Cmd.none )

        MLMsg.M_API_NodeFamilies nf ->
            ( model, Cmd.none )

        MLMsg.MouseMsg pos ->
            ( model, Cmd.none )

        MLMsg.KeyMsg key ->
            ( model, Cmd.none )



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
