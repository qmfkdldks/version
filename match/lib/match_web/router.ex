defmodule MatchWeb.Router do
  use MatchWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MatchWeb do
    pipe_through :api
  end
end
