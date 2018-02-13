defmodule RifterWeb.Router do
  use RifterWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RifterWeb do
    pipe_through :api
  end
end
