defmodule Rifter.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Rifter.Accounts.User


  schema "users" do
    field :is_admin, :boolean, default: false
    field :password, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:username, :password, :is_admin])
    |> validate_required([:username, :password, :is_admin])
  end
end
