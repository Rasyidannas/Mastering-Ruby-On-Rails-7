class AddRoleToAdmin < ActiveRecord::Migration[7.2]
  def change
    add_reference :admins, :role, null: false, foreign_key: true
  end
end
