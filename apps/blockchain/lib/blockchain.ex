defmodule Blockchain do

  alias Blockchain.{Block, BlockData}

  defstruct(
    chain: [Block],
    height: 0
  )

  @type t :: Blockchain

  @spec add_block(t, String.t()) :: t | {:error, String.t()}
  def add_block(chain, data) do

    last_block = List.last(chain.chain)
    block = Block.generate_next_block(data, last_block)

    if BlockData.verify(block, chain) do
      %Blockchain{ 
        chain: [chain.chain | block],
        height: chain.height + 1 
      }
    else
      {:error, "Couldn't verify block"}
    end
  end

  @spec new_blockchain() :: t
  def new_blockchain() do
    %Blockchain{
      chain: [Block.genesis_block()],
      height: 1
    }
  end

end
