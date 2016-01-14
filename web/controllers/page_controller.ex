defmodule Skeleton.PageController do
  use Skeleton.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
