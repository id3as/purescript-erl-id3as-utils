module Erl.Id3as.Gproc
  ( via
  , whereisName
  ) where

import Prelude
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Erl.Atom (atom)
import Erl.Data.Tuple (tuple3)
import Erl.ModuleName (NativeModuleName(..))
import Erl.Process.Raw (Pid)
import Foreign (Foreign, unsafeToForeign)
import Pinto (RegistryName(..))

whereisName ::
  forall term.
  term -> Effect (Maybe Pid)
whereisName term =
  whereisNameImpl Nothing Just $ localName term

via ::
  forall term serverType.
  term -> RegistryName serverType
via term = Via (NativeModuleName $ atom "gproc") $ localName term

localName :: forall term. term -> Foreign
localName term =
  unsafeToForeign $ (tuple3 (atom "n") (atom "l") term)

foreign import whereisNameImpl :: Maybe Pid -> (Pid -> Maybe Pid) -> Foreign -> Effect (Maybe Pid)
