class CreateStates < ActiveRecord::Migration[7.2]
  def change
    create_table :states do |t|
      t.string :name

      t.timestamps
    end
  end
end
