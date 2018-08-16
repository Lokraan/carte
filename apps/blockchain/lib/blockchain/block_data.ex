
defmodule Blockchain.BlockData do

  alias Blockchain.{Block}

  @spec verify(Block.t(), Blockchain.t()) :: :ok | {:error, String.t()}
  def verify(_block, _chain) do
    :ok
  end

end
