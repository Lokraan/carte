defmodule CarteTest do
  use ExUnit.Case
  doctest Carte

  test "greets the world" do
    assert Carte.hello() == :world
  end
end
