use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, Chatty.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "DVeyJISj0dpYdy/7zjKgOOgfgAcgc1k6Gg5d1xcR7e8OZdSVUQQdFR1n+0sU40rCh4IyZK6fAm+0wAkL8HjM9Q=="

config :logger,
  level: :info
