defmodule LockeTest do
  use ExUnit.Case
  doctest Locke

  test "greets the world" do
    assert Carte.hello() == :world
  end
end
