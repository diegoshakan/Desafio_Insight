class CreateTarefas < ActiveRecord::Migration[5.2]
  def change
    create_table :tarefas do |t|
      t.string :title
      t.text :body
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
