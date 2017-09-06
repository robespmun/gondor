defmodule Gondor.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/admin/healthcheck", to: AmonDin.Plugs.Healthcheck

  match _ do
    send_resp(conn, 404, "Not found")
  end
end
