defmodule LiveViewCounterWeb.PageControllerTest do
  use LiveViewCounterWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    # assert html_response(conn, 200) =~ "Welcome to Phoenix!"
    assert html_response(conn, 200) =~ "The count is"
  end
end
