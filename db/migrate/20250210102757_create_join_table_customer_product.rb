class CreateJoinTableCustomerProduct < ActiveRecord::Migration[7.2]
  def change
    create_join_table :customers, :products, table_name: :purchases do |t|
      t.index :product_id
      t.index :customer_id
    end
  end
end
