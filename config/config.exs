# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pettoCRAP,
  ecto_repos: [PettoCRAP.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :pettoCRAP, PettoCRAPWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4LvV+rSArB8mkCIIQ/jMstKNMjui4QnkIs1zhUxshnEor0C8qQoLF9Ccbc1p5bT5",
  render_errors: [view: PettoCRAPWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PettoCRAP.PubSub,
  live_view: [signing_salt: "NKZ8rPcc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
