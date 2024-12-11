defmodule Poll.Repo do
  use Ecto.Repo,
    otp_app: :poll,
    adapter: Ecto.Adapters.SQLite3
end
