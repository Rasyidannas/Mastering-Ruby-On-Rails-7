class AddDetailsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :gender, :string
    add_column :users, :salary, :integer
  end
end
