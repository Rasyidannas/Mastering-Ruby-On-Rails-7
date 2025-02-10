class RemoveSalaryFromUsers < ActiveRecord::Migration[7.2]
  def change
    remove_column :users, :salary, :integer
  end
end
