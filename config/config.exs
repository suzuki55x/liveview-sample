# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :liveview_sample,
  ecto_repos: [LiveviewSample.Repo]

# Configures the endpoint
config :liveview_sample, LiveviewSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eXoPZJSPCwtZC00gQ9Sg33cNfFV9Phvvt/OJl7lgbJTHC88dNJquOwukcLOpFU7P",
  render_errors: [view: LiveviewSampleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveviewSample.PubSub,
  live_view: [signing_salt: "y4Rs6h7K"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
