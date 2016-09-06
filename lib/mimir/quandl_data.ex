defmodule Mimir.Quandl.Data do
  @derive [Poison.Encoder]
  defstruct [:dataset, :collapse, :order, :database_id]
end
