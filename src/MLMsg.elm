module MLMsg exposing (Msg(..))

import Http
import Mouse
import Keyboard
import Megaload


type Msg
    = M_Nothing
    | M_API_NodeFamilies (Maybe Megaload.NodeFamilyList)
    | MouseMsg Mouse.Position
    | KeyMsg Keyboard.KeyCode
