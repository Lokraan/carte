
defmodule Blockchain.Difficulty do

  alias Blockchain.{Block, Utils}

  # https://ethereum.stackexchange.com/questions/1880/how-is-the-mining-difficulty-calculated-on-ethereum
	@spec get_next_difficulty(Block.t()) :: integer
	def get_next_difficulty(block, last_block) do

    if block.index == 1 do
      1
    else

    end

    [last_block, _] = chain

    last_200_blocks = Enum.drop(list, last_block.index - 200)
  
    # Return 1 if block index is 1

    # block_diff = parent_diff + parent_diff // 2048 * (1 if block_timestamp - parent_timestamp < 13 else -1) + int(2**((block.number // 100000) - 2))
    diff = parent.diff + div(parent.diff, 2048)
    block.diff = diff * (1 if )

    if block.index == 1 do
      1.0
    else  
      int nShift = (block.index.bits >>> 24) &&& 0xff;
    end

    diff = highest_difficulty * Utils.pow(2, (8 *(0x1d - 3))

	end

end
