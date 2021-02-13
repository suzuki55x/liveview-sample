defmodule LiveviewSample.Repo do
  use Ecto.Repo,
    otp_app: :liveview_sample,
    adapter: Ecto.Adapters.Postgres
end
