defmodule Gondor.Supervisor do
  use Supervisor

  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg)
  end

  def init(arg) do
    children = [
      Plug.Adapters.Cowboy.child_spec(:http, Gondor.Router, [], port: 12345)
    ]

    supervise(children, strategy: :one_for_one)
  end
end
