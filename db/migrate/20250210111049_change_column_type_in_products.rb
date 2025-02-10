class ChangeColumnTypeInProducts < ActiveRecord::Migration[7.2]
  def change
    change_column :products, :part_number, :text
  end
end
