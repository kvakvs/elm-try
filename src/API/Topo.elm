module API.Topo exposing (get_node_families)

import Task exposing (Task, andThen)
import Http
import Json.Decode as Decode

import Megaload
import MLMsg


api_topo : String
api_topo =
    "http://localhost:8080/api/topo"

make_request_get_nf : Http.Request
make_request_get_nf =
    let
        url =
            api_topo ++ "/node-family"
    in
        { verb = "GET"
        , headers =
            [ ( "Content-Type", "application/json" )
            , ( "Accept", "application/json" )
            ]
        , url = url
        , body = Http.empty
        }

get_node_families_do : a -> Task Http.RawError Http.Response
get_node_families_do a =
    Http.send Http.defaultSettings make_request_get_nf

--        |> Task.mapError raw_error_to_error

get_node_families : Task Http.Error Megaload.NodeFamilyList
get_node_families =
    get_node_families_do
        |> Task.perform MLMsg.M_Nothing MLMsg.M_API_NodeFamilies
