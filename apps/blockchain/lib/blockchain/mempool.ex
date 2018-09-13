
defmodule Blockchain.Mempool do
  
  @type t :: %__MODULE__{
    transactions: [],
    max_mem: 1024 * 50 # 5 kilobytes
  }

  @derive [Poison.Encoder]
  defstruct [
    :transactions,
    :max_mem
  ]

end
