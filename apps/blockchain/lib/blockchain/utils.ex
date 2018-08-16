
defmodule Blockchain.Utils do
  
  @spec get_timestamp() :: integer
  def get_timestamp() do
    DateTime.utc_now()
    |> DateTime.to_unix()
  end

end
