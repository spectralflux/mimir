defmodule Mimir do
  def main(args) do
    IO.puts "Mimir"
    write_to_file "gold_volatility_data.txt"
  end

  def write_to_file filename do
    Mimir.FileWriter.write_enum_to_file filename, Mimir.Quandl.gold_volatility
  end
end
