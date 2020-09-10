defmodule Podemosaprender.Repo.Migrations.UpdateUsersFields do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :fullname, :string, null: false
      add :username, :string, null: false
    end
  end
end
