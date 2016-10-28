module Megaload exposing (..)


type alias NodeId =
    { id : String }


type NodeSelectionStrategy
    = NSS_Random
    | NSS_None
    | List NodeId


type BootstrapStrategy
    = BS_None
    | BS_Simple
    | BS_Custom


type alias NodeFamily =
    { id : String
    , name : String
    , description : String
    , node_selection : NodeSelectionStrategy
    }


type alias NodeFamilyList =
    List NodeFamily
