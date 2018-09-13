
defmodule Blockchain.Address do

  @type t :: %__MODULE__{
    address: String.t(),
    balance: float
  }

  @derive [Poison.Encoder]
  defstruct [
    :address,
    :balance
  ]

  def generate_address() do
    {:ok, {priv, pub}} = RsaEx.generate_keypair("4096")

    address = 
      :crypto.hash(:sha256, pub)
      |> Base.encode64()

    %Address{
      address: address
    } 
  end

end
