use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :podemosaprender, Podemosaprender.Repo,
  username: "postgres",
  password: "postgres",
  database: "podemosaprender_test",
  # hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

if System.get_env("GITHUB_ACTIONS") do
  config :podemosaprender, Podemosaprender.Repo,
    username: "postgres",
    password: "postgres"
end

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :podemosaprender, PodemosaprenderWeb.Endpoint,
  http: [port: 4002],
  server: true

config :podemosaprender, PodemosaprenderWeb.Endpoint, server: true

config :podemosaprender, :sql_sandbox, true

# Print only warnings and errors during test
config :logger, level: :warn

config :wallaby,
  driver: Wallaby.Selenium

config :wallaby, otp_app: :podemosaprender
