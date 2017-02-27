defmodule Mailman.Mixfile do
  use Mix.Project

  def project do
    [ app: :mailman,
      name: "Mailman",
      source_url: "https://github.com/kamilc/mailman",
      homepage_url: "https://github.com/kamilc/mailman",
      description: "Library providing a clean way of defining mailers in Elixir apps",
      package: package,
      version: "0.3.0",
      elixir: "~> 1.0",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:ssl, :crypto, :iconv, :gen_smtp, :httpotion]]
  end

  # Returns the list of dependencies in the format:
  defp deps do
    [
      { :iconv, "~> 1.0.0" },
      { :gen_smtp, "~> 0.11.0" },
      { :ex_doc, ">= 0.11.4", only: :dev },
      { :earmark, ">= 0.0.0" },
      { :httpotion, "~> 3.0.0" },
    ]
  end

  defp package do
    [
      files: ["lib", "docs", "LICENSE", "README", "mix.exs"],
      maintainers: ["Kamil Ciemniewski <ciemniewski.kamil@gmail.com>"],
      licenses: ["MIT"],
      links: %{
         "GitHub" => "https://github.com/kamilc/mailman",
         "Docs" => "http://hexdocs.pm/mailman"
     }
    ]
  end
end
