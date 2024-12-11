defmodule Poll.Repo.Migrations.CreatePollsChoices do
  use Ecto.Migration

  def change do
    create table(:polls_choices, primary_key: true) do
      add :choice_text, :text, null: false
      add :votes, :integer, null: false, default: 0
      add :question_id, references(:poll_questions, on_delete: :delete_all)

      timestamps(type: :utc_datetime)
    end

    create index(:polls_choices, [:question_id])
  end
end
