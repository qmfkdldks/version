defmodule AccountWeb.Router do
  use AccountWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", AccountWeb do
    pipe_through :api

    scope "/user" do
      resources "/", User.RegistrationController, only: [:create]
      resources "/auth", User.AuthenticationController, only: [:create]
    end
  end
end
