class CreateVestimenta < ActiveRecord::Migration[5.1]
  def change
    create_table :vestimenta do |t|
      t.date :dia
      t.string :tema
      t.string :foto
      t.text :descripcion

      t.timestamps
    end
  end
end
