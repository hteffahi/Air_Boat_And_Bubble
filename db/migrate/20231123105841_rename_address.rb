class RenameAddress < ActiveRecord::Migration[7.0]
  def change
    rename_column :boats, :adress, :address
  end
end
