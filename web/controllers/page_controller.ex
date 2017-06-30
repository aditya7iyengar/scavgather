defmodule Scavgather.PageController do
  use Scavgather.Web, :controller

  def index(conn, _params) do
    question = Scavgather.Repo.get!(Scavgather.Question, 1)
    render conn, "index.html",
      question: question
  end
end
