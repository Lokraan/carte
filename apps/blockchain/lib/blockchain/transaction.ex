
defmodule Blockchain.Transaction do

  alias Blockchain.{Address, Utils}

  @type t :: %__MODULE__{
    sender: Address.t(),
    receiver: Address.t(),
    amount: float,
    timestamp: integer
  }

  @derive [Poison.Encoder]
  defstruct [
    :sender,
    :previous_hash,
    :amount,
    :timestamp
  ]

  def create_tx(sender, receiver, amount) do
    %Transaction{
      sender: sender.address,
      receiver: receiver.address,
      amount: amount,
      timestamp: Utils.get_timestamp()
    }
  end

  def verify_tx()

end
