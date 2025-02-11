class RemoveForeignKeyFromProducts < ActiveRecord::Migration[7.2]
  def change
    remove_foreign_key :products, :users
  end
end
