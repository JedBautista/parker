defmodule PettoCRAP.Repo do
  use Ecto.Repo,
    otp_app: :pettoCRAP,
    adapter: Ecto.Adapters.Postgres
end
