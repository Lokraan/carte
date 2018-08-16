
defmodule Blockchain.Crypto do
  
  def hash(data, algorithm \\ :sha256) do
    :crypto.hash(algorithm, data)
    |> Base.encode16()
  end

end
