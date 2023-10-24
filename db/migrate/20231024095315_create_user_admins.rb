class CreateUserAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :user_admins do |t|

      t.timestamps
    end
  end
end
