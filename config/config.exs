# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :wedding, WeddingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eB1fjdI1v/Gd/i89cSwpXZnLFLoLEBxsioFEocimS6qo8dm3p/vpydrVCeclA+9x",
  render_errors: [view: WeddingWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Wedding.PubSub,
  live_view: [signing_salt: "lasqLcKH"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
