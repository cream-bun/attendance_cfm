class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :student_number
      t.string :department
      t.string :name
      t.date :birth_day
      t.string :encrypted_password
      t.timestamps
    end
  end
end
