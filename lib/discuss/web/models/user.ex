defmodule Discuss.Web.User do
  use Discuss.Web, :model

  schema "users" do
    field :email, :string
    field :provider, :string
    field :token, :string
    has_many :topics, Discuss.Web.Topic
    has_many :comments, Discuss.Web.Comment

    timestamps()
  end

  # params defaults to an empty map with the \\ syntax
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :provider, :token])
    |> validate_required([:email, :provider, :token])
  end
end
