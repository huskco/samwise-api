defmodule Samwise.Router do
  use Samwise.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Samwise do
    pipe_through :api

    resources "session", SessionController, only: [:index]
  end
end
