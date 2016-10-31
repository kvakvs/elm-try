module API.Topo exposing (get_node_families)

import Task exposing (Task, andThen)
import Http
import Json.Decode as Decode exposing ((:=))

import Megaload
import MLMsg


api_topo : String
api_topo =
    "http://localhost:8080/api/topo"


make_GET_request : String -> Http.Request
make_GET_request url =
    { verb = "GET"
    , headers =
        [ ( "Content-Type", "application/json" )
        , ( "Accept", "application/json" )
        ]
    , url = url
    , body = Http.empty
    }


send_get : Http.Request -> Task Http.RawError Http.Response
send_get req =
    Http.send Http.defaultSettings req


decode_node_family_list : Decode.Decoder Megaload.NodeFamilyList
decode_node_family_list =
  let json =
        Decode.object3 Megaload.NodeFamily
          ("id" := Decode.string)
          ("name" := Decode.string)
          ("description" := Decode.string)
  in
      Decode.list json


get_node_families : Task Http.Error (Maybe Megaload.NodeFamilyList)
get_node_families =
    send_get (make_GET_request (api_topo ++ "/node-family"))
        |> Http.fromJson decode_node_family_list
        |> Task.toMaybe

--fetchRandomQuote : Platform.Task Http.Error String
--fetchRandomQuote =
--    Http.getString randomQuoteUrl
--
--fetchRandomQuoteCmd : Cmd Msg
--fetchRandomQuoteCmd =
--    Task.perform HttpErrolr FetchQuoteSuccess fetchRandomQuote