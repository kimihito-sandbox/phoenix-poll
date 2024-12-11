defmodule Poll.Repo.Migrations.CreatePollQuestions do
  use Ecto.Migration

  def change do
    create table(:poll_questions) do
      add :question_text, :text, null: false
      add :pub_date, :utc_datetime, null: false

      timestamps(type: :utc_datetime)
    end
  end
end
