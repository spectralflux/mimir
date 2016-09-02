defmodule QuandlTest do
  use ExUnit.Case
  doctest Mimir.Quandl
  import Mimir.Quandl, only: [gold_volatility: 0]

  setup_all do
    {:ok, gold_volatility: gold_volatility}
  end

  test "gold_volatility returns something", state do
    assert state[:gold_volatility] != nil
  end

  test "print out some data values", state do
    data = state[:gold_volatility]
    IO.inspect data
  end

end
