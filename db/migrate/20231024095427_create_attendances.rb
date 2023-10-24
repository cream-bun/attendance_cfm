class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.date :dating
      t.string :attendance
      t.references :student
      t.references :lecture
      t.timestamps
    end
  end
end
