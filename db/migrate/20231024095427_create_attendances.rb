class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.date "dating", null: false
      t.string "attendance", null: false 
      t.references "student", null: false, foreign_key: true
      t.references "lecture", null: false, foreign_key: true
      t.timestamps
    end
  end
end