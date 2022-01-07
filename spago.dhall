{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "erl-kernel"
, dependencies =
  [ "effect"
  , "either"
  , "erl-atom"
  , "erl-binary"
  , "erl-kernel"
  , "erl-lists"
  , "erl-maps"
  , "erl-modules"
  , "erl-pinto"
  , "erl-process"
  , "erl-tuples"
  , "foreign"
  , "maybe"
  , "newtype"
  , "prelude"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, backend = "purerl"
}
