defmodule Samwise.SessionController do
  use Samwise.Web, :controller

  def index(conn, _params) do
    response = %{status: "Ok"}
    conn
      |> json(response)
  end
end
