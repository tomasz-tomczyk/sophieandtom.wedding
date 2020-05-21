defmodule WeddingWeb.HomeController do
  use WeddingWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html", page_title: "Home")
  end
end
