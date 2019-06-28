defmodule AccountWeb.User.AuthenticationController do
  use AccountWeb, :controller

  alias Account.User

  def create(conn, params) do
    case User.sign_in(params) do
      {:ok, result} ->
        render(conn, result)

      _ ->
        {:error, :unauthorized}
    end
  end
end
