class AgregarColumna < ActiveRecord::Migration[5.1]
  def change
  	add_column :reservacions, :nombre, :text
  end
end

