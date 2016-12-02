# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pdokku,
  ecto_repos: [Pdokku.Repo]

# Configures the endpoint
config :pdokku, Pdokku.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Zgzlf9qGhzf3VGscMXIyMIAM882ZIMe2gxWiJDcTN92Ign4NgT/BSthzkm0M4zo7",
  render_errors: [view: Pdokku.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Pdokku.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
