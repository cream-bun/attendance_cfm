class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.date :dating
      t.text :question
      t.references :lecture
      t.timestamps
    end
  end
end
