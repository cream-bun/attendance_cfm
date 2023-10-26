class CreateUserAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :user_admins do |t|
      t.string "name",  null: false
      t.string "encrypted_password", null: false
      t.timestamps
    end
  end
end