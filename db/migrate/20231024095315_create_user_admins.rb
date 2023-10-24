class CreateUserAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :user_admins do |t|
      t.string :name
      t.string :encrypted_password
      t.timestamps
    end
  end
end
