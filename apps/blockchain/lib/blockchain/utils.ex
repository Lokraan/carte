defmodule Blockchain.Utils do

  @spec get_timestamp() :: integer
  def get_timestamp() do
    DateTime.utc_now()
    |> DateTime.to_unix()
  end

  def pow(_, 0), do: 1
  def pow(x, n) when Integer.is_odd(n), do: x * pow(x, n - 1)
  def pow(x, n) do
    result = pow(x, div(n, 2))
    result * result
  end

end