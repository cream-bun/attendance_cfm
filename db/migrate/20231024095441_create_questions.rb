class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.date "dating", null: false
      t.text "question"
      t.references "lecture", null: false, foreign_key: true
      t.timestamps
    end
  end
end