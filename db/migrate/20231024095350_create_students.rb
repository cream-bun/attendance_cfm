class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string "student_number", null: false
      t.string "department", null: false
      t.string "name", null: false
      t.date "birth_day", null: false
      t.string "encrypted_password", null: false
      t.timestamps
    end
  end
end