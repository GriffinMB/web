defmodule Web.PageController do
  use Web.Web, :controller

  def index(conn, _params) do
    cart_ids = get_session(conn, :cart)
    if cart_ids do
        Enum.any?(cart_ids, fn(x) -> x > 5 end)
    end

    render conn, "index.html"
  end
end
