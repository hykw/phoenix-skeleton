# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :skeleton, Skeleton.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "YUqSED1vCFinjik8KLNYg1ivUAI0rJOMqgBw3zaH0h7hDgBHxg/Z8P94YuCMzVdJ",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Skeleton.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false


### gettext
config :skeleton, Skeleton.Gettext, default_locale: "ja"

### ログのファイル出力
config :logger,
backends: [
  {LoggerFileBackend, :filelog_debug},
  {LoggerFileBackend, :filelog_info_warn_error},
]

config :logger, :filelog_debug,
  path: "logs/debug.log",
  level: :debug,
  format:   "$date $time\t[$level]\t$metadata\t$message\n",

  metadata: [:request_id]

config :logger, :filelog_info_warn_error,
  path: "logs/phoenix.log",
  level: :info,
  format:   "$date $time\t[$level]\t$metadata\t$message\n",
  metadata: [:request_id]






# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
