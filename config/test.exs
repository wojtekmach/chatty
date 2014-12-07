use Mix.Config

config :phoenix, Chatty.Router,
  http: [port: System.get_env("PORT") || 4001]
