module MLMsg exposing (Msg(..))

import Mouse
import Keyboard
import Megaload


type Msg
    = M_Nothing
    | M_APIError
    | M_API_NodeFamilies Megaload.NodeFamilyList
    | MouseMsg Mouse.Position
    | KeyMsg Keyboard.KeyCode
