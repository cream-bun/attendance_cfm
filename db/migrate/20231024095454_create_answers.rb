class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.references "student", null: false, foreign_key: true
      t.references "question", null: false, foreign_key: true
      t.boolean "check", null: false
      t.text "remarks"
      t.timestamps
    end
  end
end

