defmodule Oauth2.Mixfile do
  use Mix.Project

  @description """
  Elixir OAuth2 Client
  """

  def project do
    [
      app: :oauth2,
      version: "0.0.1",
      elixir: ">= 0.15.0",
      deps: deps,
      description: @description,
      package: [
        contributors: ["Sonny Scroggin"],
        licence: "MIT",
        links: [github: "https://github.com/scrogson/oauth2"]
      ]
    ]
  end

  def application do
    [applications: [:httpoison],
     mod: {OAuth2, []}]
  end

  defp deps do
    [
      {:hackney, "~> 0.13.1"},
      {:httpoison, "~> 0.4.1"},
      {:poison, "~> 1.0.1"}
    ]
  end
end