class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.references :creatstudent
      t.references :question
      t.boolean :check
      t.text :remarks
      t.timestamps
    end
  end
end
