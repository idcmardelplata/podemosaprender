defmodule Podemosaprender.Repo do
  use Ecto.Repo,
    otp_app: :podemosaprender,
    adapter: Ecto.Adapters.Postgres
end
