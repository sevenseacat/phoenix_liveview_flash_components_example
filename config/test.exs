import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :phoenix_liveview_flash_components_example, PhoenixLiveviewFlashComponentsExample.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database:
    "phoenix_liveview_flash_components_example_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_liveview_flash_components_example,
       PhoenixLiveviewFlashComponentsExampleWeb.Endpoint,
       http: [ip: {127, 0, 0, 1}, port: 4002],
       secret_key_base: "TALK3hwLF6JtFW7Rl54kzJlAi47E1PbpcWi3zIe+51qRk5vM2X1X7KkSJ/t94rhG",
       server: false

# In test we don't send emails.
config :phoenix_liveview_flash_components_example, PhoenixLiveviewFlashComponentsExample.Mailer,
  adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
