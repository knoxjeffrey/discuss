defmodule Discuss.Comment do
  use Discuss.Web, :model

  schema "comments" do
    field :comment, :string
    belongs_to :user, Discuss.User
    belongs_to :topic, Discuss.Topic

    timestamps
  end

  # params defaults to an empty map with the \\ syntax
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:content])
    |> validate_required([:content])
  end
end
