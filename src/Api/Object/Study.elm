-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Api.Object.Study exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Object as Object
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Api.Object
import Api.Interface
import Api.Union
import Api.Scalar
import Api.InputObject
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)



{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.Study
selection constructor =
    Object.selection constructor
{-| 
-}
id : Field (Maybe Api.Scalar.Id) Api.Object.Study
id =
      Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Api.Scalar.Id |> Decode.nullable)


{-| 
-}
patient : SelectionSet decodesTo Api.Object.Patient -> Field (Maybe decodesTo) Api.Object.Study
patient object_ =
      Object.selectionField "patient" [] (object_) (identity >> Decode.nullable)


{-| 
-}
series : SelectionSet decodesTo Api.Object.Series -> Field (Maybe (List (Maybe decodesTo))) Api.Object.Study
series object_ =
      Object.selectionField "series" [] (object_) (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| 
-}
description : Field (Maybe String) Api.Object.Study
description =
      Object.fieldDecoder "description" [] (Decode.string |> Decode.nullable)


{-| 
-}
acquisitionDate : Field (Maybe Int) Api.Object.Study
acquisitionDate =
      Object.fieldDecoder "acquisitionDate" [] (Decode.int |> Decode.nullable)


{-| 
-}
patientAge : Field (Maybe Int) Api.Object.Study
patientAge =
      Object.fieldDecoder "patientAge" [] (Decode.int |> Decode.nullable)