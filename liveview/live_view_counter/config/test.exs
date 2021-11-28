import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :live_view_counter, LiveViewCounterWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "HNb8wcVcPZs7yOwH/5SteP2/J53kcb/1w5/PWsAATpWJD1Moa4FO5htZpHZXFSox",
  server: false

# In test we don't send emails.
config :live_view_counter, LiveViewCounter.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
