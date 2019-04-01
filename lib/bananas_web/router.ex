defmodule BananasWeb.Router do
  use BananasWeb, :router

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

  scope "/", BananasWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "faq", FaqController, :index
    get "apply", ApplyController, :index
    post "apply", ApplyController, :update
  end

  # Other scopes may use custom stacks.
  # scope "/api", BananasWeb do
  #   pipe_through :api
  # end
end
