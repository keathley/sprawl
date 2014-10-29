# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, Sprawl.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  https: false,
  secret_key_base: "NRxejXqU+CAyQMpSVOIjBdZlm7Q4HQdyUHSQDS+W2YmHQx7GZCeNg8o2LNfkVge0rszQ3KB29hxg14f0nwJ2Yg==",
  catch_errors: true,
  debug_errors: false,
  error_controller: Sprawl.PageController

# Session configuration
config :phoenix, Sprawl.Router,
  session: [store: :cookie,
            key: "_sprawl_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
