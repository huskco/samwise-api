# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :samwise,
  ecto_repos: [Samwise.Repo]

# Configures the endpoint
config :samwise, Samwise.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8Qo2pIbDMXvpPdshT+ljTd8/ivXASS30uJF1ZRE3vsmbMt2a9tWcXmvkDUGcp4YS",
  render_errors: [view: Samwise.ErrorView, accepts: ~w(json)],
  pubsub: [name: Samwise.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# The JSON-API standard requires that we handle the mime type application/vnd.api+json
config :phoenix, :format_encoders,
  "json-api": Poison

config :plug, :mimes, %{
  "application/vnd.api+json" => ["json-api"]
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
