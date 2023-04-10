defmodule Blogger.MixProject do
  use Mix.Project

  def project do
    [
      app: :blogger,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
    ]
  end
  def escript do
    [main_module: Blogger]
  end




  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end




  defp deps do
    [
      {:httpoison, "~> 1.8.2"}
    ]
  end


end
