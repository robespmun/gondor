defmodule Gondor do
  def start(_type, args) do
    register_checks
    Gondor.Supervisor.start_link([])
  end

  defp register_checks do
    AmonDin.register("trivial", fn -> true end)
    AmonDin.register("slow", fn -> :timer.sleep(6000) end)
    AmonDin.register("failing", fn -> false end)
    AmonDin.register("exception", fn -> raise "boom" end)
    AmonDin.register("throw", fn -> throw "boom" end)
    AmonDin.register("process exit", fn -> GenServer.call(nil, :boom) end)
  end
end
