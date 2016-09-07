defmodule Mimir.Repo.Migrations.InitialDb do
  use Ecto.Migration

  def change do
    create table(:unit) do
      add :name, :string
    end

    create table(:source) do
      add :name, :string
      add :url, :string
    end

    create table(:timeseries_data) do
      add :data, :float
      add :time, :datetime
      add :source_id, references(:source)
      add :unit_id, references(:unit)
      timestamps
    end

  end
end
