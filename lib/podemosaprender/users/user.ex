defmodule Podemosaprender.Users.User do
  @moduledoc """
   User schema file
  """
  use Ecto.Schema
  use Pow.Ecto.Schema
  import Ecto.Changeset, only: [cast: 3, validate_required: 2]

  schema "users" do
    pow_user_fields()
    field :fullname, :string, null: false
    field :username, :string, null: false

    timestamps()
  end

  def changeset(user, attrs) do
    user
    |> pow_changeset(attrs)
    |> cast(attrs, [:fullname, :username])
    |> validate_required([:fullname, :username])
  end
end
