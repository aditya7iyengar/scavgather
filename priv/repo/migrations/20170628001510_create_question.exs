defmodule Scavgather.Repo.Migrations.CreateQuestion do
  use Ecto.Migration

  def change do
    create table(:question) do
      add :prompt, :text
      add :pic, :string
      add :answer, :string
      add :reward, :string

      timestamps()
    end

  end
end
