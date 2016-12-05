defmodule Pdokku.PageControllerTest do
  use Pdokku.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Dokku Phoenix!"
  end
end
