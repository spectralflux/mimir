defmodule Mimir.Mixfile do
  use Mix.Project

  def project do
    [app: :mimir,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: [main_module: Mimir],
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [ mod: {Mimir, []},
      applications: [:logger, :httpoison, :ecto, :postgrex]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:httpoison, "~> 0.9.1"},
     {:poison, "~> 2.0"},
     {:credo, "~> 0.4", only: [:dev, :test]},
     {:postgrex, ">= 0.0.0"},
     {:ecto, "~> 2.0.0"}]
  end
end
