defmodule BananasWeb.PageController do
  use BananasWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
