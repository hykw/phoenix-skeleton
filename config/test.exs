use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :skeleton, Skeleton.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :skeleton, Skeleton.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "testuser",
  password: "testpass",
  database: "phoenix_skeleton",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
