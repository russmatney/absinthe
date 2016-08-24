defmodule Absinthe.Blueprint.Input.Object do

  alias Absinthe.Blueprint

  @enforce_keys [:fields]
  defstruct [
    fields: [],
    # Added by phases
    schema_node: nil,
    errors: [],
  ]

  @type t :: %__MODULE__{
    fields: [Blueprint.Input.Field.t],
    schema_node: nil | Absinthe.Type.InputObject.t,
    errors: [Absinthe.Phase.Error.t],
  }

end