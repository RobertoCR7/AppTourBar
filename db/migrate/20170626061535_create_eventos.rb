class CreateEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :eventos do |t|
      t.date :dia
      t.string :foto
      t.text :descripcion

      t.timestamps
    end
  end
end
