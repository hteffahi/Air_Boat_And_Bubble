class AddAdresseToBoats < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :adress, :string
  end
end
