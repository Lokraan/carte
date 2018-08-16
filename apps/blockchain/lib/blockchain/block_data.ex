
defmodule Blockchain.BlockData do

  alias Blockchain.{Block}
  
  @spec hash(String.t()) :: String.t() 
  def hash(data) do
    :crypto.hash(:sha256, data)
    |> Base.encode16()
  end

  @spec verify(Block.t(), Blockchain.t()) :: :ok | {:error, String.t()}
  def verify(_block, _chain) do
    :ok
  end

end
