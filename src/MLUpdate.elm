module MLUpdate exposing (ml_update)

import MLModel
import MLMsg


ml_update : MLMsg.Msg -> MLModel.Model -> ( MLModel.Model, Cmd MLMsg.Msg )
ml_update msg model =
    case msg of
        MLMsg.M_Nothing ->
            ( model, Cmd.none )

        MLMsg.M_API_NodeFamilies maybe_nf ->
            ( model, Cmd.none )

        MLMsg.MouseMsg pos ->
            ( model, Cmd.none )

        MLMsg.KeyMsg key ->
            ( model, Cmd.none )
