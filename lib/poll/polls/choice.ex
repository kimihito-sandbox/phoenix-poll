defmodule Poll.Polls.Choice do
  use Ecto.Schema
  import Ecto.Changeset

  schema "polls_choices" do
    field :choice_text, :string
    field :votes, :integer
    belongs_to :question, Poll.Polls.Question

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(choice, attrs) do
    choice
    |> cast(attrs, [:choice_text, :votes, :question_id])
    |> validate_required([:choice_text, :votes, :question_id])
    |> foreign_key_constraint(:question_id)
    |> validate_number(:votes, greater_than: 0)
  end
end
