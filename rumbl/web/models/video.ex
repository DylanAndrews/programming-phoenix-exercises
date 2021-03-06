defmodule Rumbl.Video do
  use Rumbl.Web, :model

  schema "videos" do
    field :" url", :string
    field :title, :string
    field :string, :string
    field :description, :string
    belongs_to :user, Rumbl.User

    timestamps()
  end

  @required_fields ~w(url title description)
  @optional_fields ~w()
  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:" url", :title, :string, :description])
    |> validate_required([:" url", :title, :string, :description])
  end
end
