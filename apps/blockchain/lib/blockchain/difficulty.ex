
defmodule Blockchain.Difficulty do

  alias Blockchain.{Block, Utils}

  # https://ethereum.stackexchange.com/questions/1880/how-is-the-mining-difficulty-calculated-on-ethereum
	@spec get_next_difficulty(Block.t()) :: integer
	def get_next_difficulty(block) do
  
    # Return 1 if block index is 1

    if block.index == 1 do
      1.0
    else
      int nShift = (block.index.bits >>> 24) &&& 0xff;
    end


    diff = highest_difficulty * Utils.pow(2, (8 *(0x1d - 3))

	end

end
