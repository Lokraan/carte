defmodule BlockchainTest do

  use ExUnit.Case
  doctest Blockchain

  test "greets the world" do
    chain = Blockchain.new_blockchain()
    Scribe.print(chain)

    chain2 = Blockchain.add_block(chain, "Dab")
    Scribe.print(chain2)

    chain3 = Blockchain.add_block(chain, "Bad")
    Scribe.print(chain3)
  end
end
