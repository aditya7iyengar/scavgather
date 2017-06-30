defmodule Scavgather.Router do
  use Scavgather.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Scavgather do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/questions", QuestionController
    get "/questions/:id/answer", QuestionController, :answer
    get "/questions/:id/reward", QuestionController, :reward
  end

  # Other scopes may use custom stacks.
  # scope "/api", Scavgather do
  #   pipe_through :api
  # end
end
