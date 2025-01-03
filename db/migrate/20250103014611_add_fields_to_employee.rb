class AddFieldsToEmployee < ActiveRecord::Migration[7.2]
  def change
    add_column :employees, :haspassport, :boolean
    add_column :employees, :salary, :integer
    add_column :employees, :notes, :string
    add_column :employees, :birthdate, :date
    add_column :employees, :hiredate, :date
    add_column :employees, :gender, :string
  end
end
