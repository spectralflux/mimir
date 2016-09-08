defmodule Mimir.Models.TimeseriesData do
  alias Mimir.Models.Source
  alias Mimir.Models.Unit
  use Ecto.Schema

  schema "timeseries_data" do
    field :data, :float
    field :data_time, Ecto.Time
    field :data_date, Ecto.Date
    timestamps

    has_one(:source, Source)
    has_one(:unit, Unit)
  end

end
