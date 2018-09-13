defmodule Blockchain do
  use GenServer
  alias Blockchain.{Block, BlockData, Chain}

  def start_link() do
    Genserver.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  @impl true
  def init(_) do
    {:ok, [Block.genesis_block()]}
  end

  @spec add_block(Block.t()) :: t | {:error, String.t()}
  def add_block(pid, block) do
    GenServer.call(pid, {:add_block, block})
  end

  @impl true
  def handle_call({:add_block, block}) do
    case Chain.verify_block(add_block) ->

      {:ok, resp} -> 
        {:reply, {:ok, resp}, [state | block]}

      {:error, err} ->
        {:reply, {:error, err}, }

    end
  end

end
