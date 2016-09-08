defmodule Mimir.Models.Unit do
  alias Mimir.Models.TimeseriesData
  use Ecto.Schema

  schema "unit" do
    field :name, :string

    belongs_to :timeseries_data, TimeseriesData
  end
end
