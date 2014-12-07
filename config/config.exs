# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, Chatty.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "DVeyJISj0dpYdy/7zjKgOOgfgAcgc1k6Gg5d1xcR7e8OZdSVUQQdFR1n+0sU40rCh4IyZK6fAm+0wAkL8HjM9Q==",
  debug_errors: false,
  error_controller: Chatty.PageController

# Session configuration
config :phoenix, Chatty.Router,
  session: [store: :cookie,
            key: "_chatty_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
