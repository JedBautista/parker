defmodule Parker.Repo do
  use Ecto.Repo,
    otp_app: :Parker,
    adapter: Ecto.Adapters.Postgres
end
