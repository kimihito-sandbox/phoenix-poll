defmodule Poll.Polls.Question do
  use Ecto.Schema
  import Ecto.Changeset

  schema "poll_questions" do
    field :question_text, :string
    field :pub_date, :utc_datetime

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(question, attrs) do
    question
    |> cast(attrs, [:question_text, :pub_date])
    |> validate_required([:question_text, :pub_date])
  end
end
