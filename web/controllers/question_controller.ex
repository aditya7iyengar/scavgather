defmodule Scavgather.QuestionController do
  use Scavgather.Web, :controller

  alias Scavgather.Question

  def index(conn, _params) do
    question = Repo.all(Question)
    render(conn, "index.html", question: question)
  end

  def new(conn, _params) do
    changeset = Question.changeset(%Question{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"question" => question_params}) do
    changeset = Question.changeset(%Question{}, question_params)

    case Repo.insert(changeset) do
      {:ok, _question} ->
        conn
        |> put_flash(:info, "Question created successfully.")
        |> redirect(to: question_path(conn, :index))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    question = Repo.get!(Question, id)
    count = length(Repo.all(Question))
    extra = case String.to_integer id do 
      id when id == count -> :last
      1 -> :first
      _ -> :none
    end

    render conn, 
      "show.html", 
      question: question,
      extra: extra
  end

  def reward(conn, %{"id" => id}) do
    question = Repo.get!(Question, id)
    child_question = Repo.get!(Question, String.to_integer(id) + 1)

    render conn,
      "reward.html",
      question: question,
      child_question: child_question
  end

  def answer(conn, params = %{"id" => id, "answer" => %{"answer" => answer}}) do
    question = Repo.get!(Question, id)
    case answer == question.answer do
      true ->
        child_question = Repo.get!(Question, String.to_integer(id) + 1)
        conn
        |> put_flash(:info, "Correct Answer!")
        |> redirect(to: question_path(conn, :reward, question))
      false ->
        conn
        |> put_flash(:error, "Wrong answer")
        |> redirect(to: question_path(conn, :show, question))
    end
  end

  def edit(conn, %{"id" => id}) do
    question = Repo.get!(Question, id)
    changeset = Question.changeset(question)
    render(conn, "edit.html", question: question, changeset: changeset)
  end

  def update(conn, %{"id" => id, "question" => question_params}) do
    question = Repo.get!(Question, id)
    changeset = Question.changeset(question, question_params)

    case Repo.update(changeset) do
      {:ok, question} ->
        conn
        |> put_flash(:info, "Question updated successfully.")
        |> redirect(to: question_path(conn, :show, question))
      {:error, changeset} ->
        render(conn, "edit.html", question: question, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    question = Repo.get!(Question, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(question)

    conn
    |> put_flash(:info, "Question deleted successfully.")
    |> redirect(to: question_path(conn, :index))
  end
end
