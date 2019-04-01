defmodule Bananas.Repo do
  use Ecto.Repo,
    otp_app: :bananas,
    adapter: Ecto.Adapters.Postgres
end
