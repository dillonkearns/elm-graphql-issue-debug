-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Api.Query exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import Api.Object
import Api.Interface
import Api.Union
import Api.Scalar
import Api.InputObject
import Graphql.Internal.Builder.Object as Object
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Json.Decode as Decode exposing (Decoder)
import Graphql.Internal.Encode as Encode exposing (Value)



{-| Select fields to build up a top-level query. The request can be sent with
functions from `Graphql.Http`.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) RootQuery
selection constructor =
    Object.selection constructor
{-| 
-}
series : SelectionSet decodesTo Api.Object.Series -> Field (Maybe (List (Maybe decodesTo))) RootQuery
series object_ =
      Object.selectionField "series" [] (object_) (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


type alias SeriesWithIDOptionalArguments = { id : OptionalArgument Api.Scalar.Id }

{-| 

  - id - 

-}
seriesWithID : (SeriesWithIDOptionalArguments -> SeriesWithIDOptionalArguments) -> SelectionSet decodesTo Api.Object.Series -> Field (Maybe decodesTo) RootQuery
seriesWithID fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { id = Absent }

        optionalArgs =
            [ Argument.optional "id" filledInOptionals.id ((\(Api.Scalar.Id raw) -> Encode.string raw)) ]
                |> List.filterMap identity
    in
      Object.selectionField "seriesWithID" optionalArgs (object_) (identity >> Decode.nullable)


type alias RoiSearchOptionalArguments = { volumeId : OptionalArgument Api.Scalar.Id, x : OptionalArgument Int, y : OptionalArgument Int, width : OptionalArgument Int, height : OptionalArgument Int, slice : OptionalArgument Int }

{-| 

  - volumeId - 
  - x - 
  - y - 
  - width - 
  - height - 
  - slice - 

-}
roiSearch : (RoiSearchOptionalArguments -> RoiSearchOptionalArguments) -> SelectionSet decodesTo Api.Object.SearchResult -> Field (Maybe decodesTo) RootQuery
roiSearch fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { volumeId = Absent, x = Absent, y = Absent, width = Absent, height = Absent, slice = Absent }

        optionalArgs =
            [ Argument.optional "volumeId" filledInOptionals.volumeId ((\(Api.Scalar.Id raw) -> Encode.string raw)), Argument.optional "x" filledInOptionals.x (Encode.int), Argument.optional "y" filledInOptionals.y (Encode.int), Argument.optional "width" filledInOptionals.width (Encode.int), Argument.optional "height" filledInOptionals.height (Encode.int), Argument.optional "slice" filledInOptionals.slice (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionField "roiSearch" optionalArgs (object_) (identity >> Decode.nullable)
