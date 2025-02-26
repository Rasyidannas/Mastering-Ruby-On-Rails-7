class AddCountryToOffshoreemployee < ActiveRecord::Migration[7.2]
  def change
    add_reference :offshoreemployees, :country, null: false, foreign_key: true
  end
end
