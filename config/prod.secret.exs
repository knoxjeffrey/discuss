use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :discuss, Discuss.Web.Endpoint,
  secret_key_base: "0DRvyGLM3sOodEv8aggqBLFrpn3RR672KsuwBoira8hMH9LtmyRWcXhPFG+nxVRt"

# Configure your database
config :discuss, Discuss.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "discuss_prod",
  pool_size: 20
