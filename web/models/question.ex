defmodule Scavgather.Question do
  use Scavgather.Web, :model

  schema "question" do
    field :prompt, :string
    field :pic, :string
    field :answer, :string
    field :reward, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:prompt, :pic, :answer, :reward])
  end
end
