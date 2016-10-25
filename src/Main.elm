import Html.App as App

import View exposing (view)
import Update exposing (update)
import Model exposing (model)

main =
  App.beginnerProgram
    { model = model
    , view = view
    , update = update
    }
