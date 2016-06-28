defmodule Absinthe.IR.IDL.Directive do

  alias Absinthe.Language

  defstruct name: nil, arguments: [], locations: [], errors: [], ast_node: nil
  @type t :: %__MODULE__{} # TODO

  def from_ast(%Language.DirectiveDefinition{} = node) do
    # TODO: arguments, locations, etc
    %__MODULE__{name: node.name, ast_node: node}
  end

end
