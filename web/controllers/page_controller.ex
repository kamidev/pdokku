defmodule Pdokku.PageController do
  use Pdokku.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
