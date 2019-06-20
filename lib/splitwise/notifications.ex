defmodule Splitwise.Notifications do
  @moduledoc """
  This module defines the functions to manage Splitwise notifications.
  """

  @doc """
  Get all the notifications of the user.

  ## Example
      iex> Splitwise.Notifications.all("token")
      %Splitwise.Client.Response{
        body: %{
          "notifications" => [
            %{
              "content" => "<strong>Tú</strong> añadiste <strong>“Sample expense”</strong> en <strong>“Prueba”</strong>.<br><font color=\"#ff652f\">Debes 500,00 $</font>",
              "created_at" => "2019-06-20T18:17:50Z",
              "created_by" => 1891,
              "id" => 28091891,
              "image_shape" => "square",
              "image_url" => "...",
              "source" => %{"id" => 2019, "type" => "Expense", "url" => nil},
              "type" => 0
            },
          ]
        },
        headers: [
          ...
        ],
        status: 200
      }
  """
  def all(access_token) do
    Splitwise.Client.get!( "/api/v3.0/get_notifications", access_token)
  end
end
