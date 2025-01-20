class AddDepartmentToEmployee < ActiveRecord::Migration[7.2]
  def change
    add_reference :employees, :department, null: false, foreign_key: true
  end
end
