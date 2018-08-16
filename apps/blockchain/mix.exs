defmodule Blockchain.MixProject do
  use Mix.Project

  def project do
    [
      app: :blockchain,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :keccakf1600]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:keccakf1600, "~> 2.0.0"},
      {:scribe, "~> 0.8"},
      {:poison, "~> 3.1"}
    ]
  end
end
