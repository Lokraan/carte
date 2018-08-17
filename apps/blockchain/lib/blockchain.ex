defmodule Blockchain do

  use GenServer
  alias Blockchain.{Block, BlockData}

  def start_link() do
    Genserver.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  @impl true
  def init(_) do
    {:ok, [Block.genesis_block()]}
  end

  @spec add_block(Block.t()) :: t | {:error, String.t()}
  def add_block(data) do

  end

  @impl true
  def handle_call(:add_block, ) do
    
    case verify_block()
  end

  @spec new_blockchain() :: t
  def new_blockchain() do
    t
  end

end
