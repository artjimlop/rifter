defmodule Rifter.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string
      add :password, :string
      add :is_admin, :boolean, default: false, null: false

      timestamps()
    end

  end
end
