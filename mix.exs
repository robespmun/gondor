defmodule Gondor.Mixfile do
  use Mix.Project

  def project do
    [
      app: :gondor,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {Gondor, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:amon_din, github: "workshare/amon_din"},
      {:cowboy, "~> 1.0.0"},
      {:plug, "~> 1.0"}
    ]
  end
end
