
defmodule Blockchain.MerkleTree do

  @type t :: %__MODULE__{
    tree: []
  }

  @derive [Poison.Encoder]
  defstruct [
    :tree
  ]

  def create_tree(list) do

  end

  def add(%MerkleTree{tree: tree}, val) do

  end

end
