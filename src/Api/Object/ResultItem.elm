-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Api.Object.ResultItem exposing (finding, height, selection, slice, volume, width, x, y)

import Api.InputObject
import Api.Interface
import Api.Object
import Api.Scalar
import Api.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.ResultItem
selection constructor =
    Object.selection constructor


{-| -}
volume : SelectionSet decodesTo Api.Object.Volume -> Field (Maybe decodesTo) Api.Object.ResultItem
volume object =
    Object.selectionField "volume" [] object (identity >> Decode.nullable)


{-| -}
finding : SelectionSet decodesTo Api.Object.SemanticId -> Field (Maybe (List (Maybe decodesTo))) Api.Object.ResultItem
finding object =
    Object.selectionField "finding" [] object (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| -}
x : Field (Maybe Int) Api.Object.ResultItem
x =
    Object.fieldDecoder "x" [] (Decode.int |> Decode.nullable)


{-| -}
y : Field (Maybe Int) Api.Object.ResultItem
y =
    Object.fieldDecoder "y" [] (Decode.int |> Decode.nullable)


{-| -}
width : Field (Maybe Int) Api.Object.ResultItem
width =
    Object.fieldDecoder "width" [] (Decode.int |> Decode.nullable)


{-| -}
height : Field (Maybe Int) Api.Object.ResultItem
height =
    Object.fieldDecoder "height" [] (Decode.int |> Decode.nullable)


{-| -}
slice : Field (Maybe Int) Api.Object.ResultItem
slice =
    Object.fieldDecoder "slice" [] (Decode.int |> Decode.nullable)
