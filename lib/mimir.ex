defmodule Mimir do
  use Application
  require Logger

  def start(_type, _args) do
    import Supervisor.Spec

    Logger.info "Starting Mimir..."

    children = [
      supervisor(Mimir.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: ExampleApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
