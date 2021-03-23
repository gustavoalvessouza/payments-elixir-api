defmodule Paymentsapi.Repo do
  use Ecto.Repo,
    otp_app: :paymentsapi,
    adapter: Ecto.Adapters.Postgres
end
