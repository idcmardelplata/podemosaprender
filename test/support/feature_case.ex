defmodule PodemosaprenderWeb.FeatureCase do
  @moduledoc """
  Feature case for BDD and Wallaby test.
  """
  use ExUnit.CaseTemplate

  using do
    quote do
      # Import conveniences for testing with connections
      use Wallaby.DSL
      import Podemosaprender.Factory

      alias PodemosaprenderWeb.Router.Helpers, as: Routes

      # The default endpoint for testing
      @endpoint PodemosaprenderWeb.Endpoint
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Podemosaprender.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Podemosaprender.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(Podemosaprender.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end
