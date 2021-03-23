defmodule PaymentsapiWeb.WelcomeController do
  use PaymentsapiWeb, :controller

  alias Paymentsapi.Numbers

  def index(conn, %{"filename" => filename}) do
    filename
    |> Numbers.sum_from_file()
    |> handle_response(conn)
  end

  defp handle_response({:ok, %{result: result}}, conn) do
    conn
    |> put_status(:ok)
    |> json(%{message: "Welcome to payments API, #{result}"})
  end

  defp handle_response({:error, reason}, conn) do
    conn
    |> put_status(:ok)
    |> json(reason)
  end
end
