defmodule BananasWeb.ApplyController do
  use BananasWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def update(conn, params) do
    answer = params["q1"]
    conn
    |> put_flash(:info, "Thanks for applying buddy")
    |> render("index.html")
  end
end