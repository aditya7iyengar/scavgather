defmodule Scavgather.PageController do
  use Scavgather.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
