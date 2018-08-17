
defmodule Blockchain.Chain do

  use GenServer
  alias Blockchain.{Block, Difficulty}

  def verify_block(block, chain) do
    [last_block | _ ] = chain
    cond do
      block.index != last_block.index + 1 -> 
        {:error, "Invalid Block Index"}

      block.previous_hash != last_block.hash ->
        {:error "Invalid Previous Hash"}

      Integer.parse(block.hash, 16) < Difficulty.get_target(block.index) ->
        {:error "Invalid Hash"} 
    end
  end

end
