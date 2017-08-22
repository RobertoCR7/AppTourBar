class CreateOfreces < ActiveRecord::Migration[5.1]
  def change
    create_table :ofreces do |t|
      t.date :dia
      t.string :nombre
      t.string :tipo
      t.text :descripcion
      t.decimal :precio
      t.integer :calificasion

      t.timestamps
    end
  end
end
