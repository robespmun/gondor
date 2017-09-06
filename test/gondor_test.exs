defmodule GondorTest do
  use ExUnit.Case
  doctest Gondor

  test "greets the world" do
    assert Gondor.hello() == :world
  end
end
