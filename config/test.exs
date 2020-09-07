use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :podemosaprender, Podemosaprender.Repo,
  username: System.get_env("POSTGRES_USER") || "postgres",
  password: System.get_env("POSTGRES_PASSWORD") || "postgres",
  database: System.get_env("POSTGRES_DB") || "podemosaprender_test",
  hostname: System.get_env("POSTGRES_HOST") || "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

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
