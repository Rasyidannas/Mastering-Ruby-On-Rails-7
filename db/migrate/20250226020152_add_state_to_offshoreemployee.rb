class AddStateToOffshoreemployee < ActiveRecord::Migration[7.2]
  def change
    add_reference :offshoreemployees, :state, null: false, foreign_key: true
  end
end
