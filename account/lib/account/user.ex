defmodule Account.User do
    def sign_in(%{"email" => email,"password" => password }) do
        {:ok, result} = Cognitex.authenticate("john.smith@example.com", "Test!123")
    end
end