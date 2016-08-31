defmodule QuandlTest do
  use ExUnit.Case
  doctest Mimir.Quandl
  import Mimir.Quandl, only: [gold_volatility: 0]

  test "gold_volatility returns something" do
    assert gold_volatility != nil
  end

end
