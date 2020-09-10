defmodule Podemosaprender.Users.User do
  @moduledoc """
   User schema file
  """
  use Ecto.Schema
  use Pow.Ecto.Schema

  schema "users" do
    pow_user_fields()

    timestamps()
  end
end
