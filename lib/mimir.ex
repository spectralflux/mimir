defmodule Mimir do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    IO.puts "Starting Mimir..."

    children = [
      supervisor(Mimir.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: ExampleApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # def main(args) do
  #   IO.puts "Mimir"
  #   write_to_file "gold_volatility_data.txt"
  # end
  #
  # def write_to_file filename do
  #   Mimir.FileWriter.write_enum_to_file filename, Mimir.Quandl.gold_volatility
  # end
end
