
defmodule Blockchain.Chain do
  
  use GenServer
  alias Blockchain.{Block, BlockData, Difficulty}

  def start_link() do
    Genserver.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  @impl true
  def init(_) do
    {:ok, [Block.genesis_block()]}
  end  

  @impl true
  def handle_call({:add_block, %Block{} = block}, _from, chain) do
    [last_block | _] = chain 

    case verify_block(block, chain) do
      :ok -> {:reply, :ok, [block | chain]}
    end

  end

  def verify_block(block, chain) do
    [last_block | _ ] = chain
    cond do
      block.index != last_block.index + 1 -> 
        {:error, "Invalid Block Index"}

      block.previous_hash != last_block.hash ->
        {:error "Invalid Previous Hash"}

      Integer.parse(block.hash, 16) < Difficulty.get_target() ->
        {:error "Invalid Hash"}
    end
  end

end
