class AddForeignKeyToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :user_id, :bigint
    add_foreign_key :products, :users
  end
end
