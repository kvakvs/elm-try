module API.Topo exposing (get_node_families)

import Task exposing (Task, andThen)
import Http
import Json.Decode as Decode
import Megaload


api_topo : String
api_topo =
    "http://localhost:8080/api/topo"



-- decoder_node_families =


port get_node_families : Signal List Megaload.NodeFamily
port get_node_families =
    Http.send Http.defaultSettings make_request_get_nf
        |> Task.map ServerResponse


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



-- Http.get decoder_node_families api_topo ++ "/node-family"
