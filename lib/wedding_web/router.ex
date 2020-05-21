defmodule WeddingWeb.Router do
  use WeddingWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {WeddingWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WeddingWeb do
    pipe_through :browser

    get "/", HomeController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", WeddingWeb do
  #   pipe_through :api
  # end
end
