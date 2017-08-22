class CreateReservas < ActiveRecord::Migration[5.1]
  def change
    create_table :reservas do |t|
      t.text :mesa
      t.text :nombre
      t.boolean :reserva

      t.timestamps
    end
  end
end
