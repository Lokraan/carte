
defmodule Blockchain.Block do
  
  alias Blockchain.{Block, BlockData, Utils, Crypto}  

  @type t :: %__MODULE__{
    index: integer,
    previous_hash: String.t(),
    timestamp: integer,
    data: Blockdata.t(),
    nonce: integer,
    hash: String.t()
  }

  @derive [Poison.Encoder]
  defstruct [
    :index,
    :previous_hash,
    :timestamp,
    :data,
    :nonce,
    :hash
  ]

  @spec genesis_block :: t
  def genesis_block() do
    block = %Block{
      index: 0,
      previous_hash: "0",
      timestamp: Utils.get_timestamp(),
      data: "Genesis Block",
      nonce: 1000
    }

    hash = compute_hash(block)
    %{block | hash: hash}

  end

  @spec generate_next_block(BlockData.t(), t) :: t
  def generate_next_block(data, latest_block) do
    block = %Block{
      index: latest_block.index + 1,
      previous_hash: latest_block.hash,
      timestamp: Utils.get_timestamp(),
      data: data,
      nonce: 1000
    }

    hash = compute_hash(block)
    %{block | hash: hash}
  end

  def compute_hash(
    %Block{index: i, previous_hash: h, timestamp: ts, data: data, nonce: n}) do
    Crypto.hash("#{i}#{h}#{ts}#{Crypto.hash(data)}#{n}")
    |> Base.encode16()
  end

end
