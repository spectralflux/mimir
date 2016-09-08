defmodule Mimir.Models.Source do
  alias Mimir.Models.TimeseriesData
  use Ecto.Schema

  schema "source" do
    field :name, :string
    field :url, :string

    belongs_to :timeseries_data, TimeseriesData
  end
end
