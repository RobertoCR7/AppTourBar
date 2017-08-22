class DropLocationsTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :locations, :adress, :address
  end
end
