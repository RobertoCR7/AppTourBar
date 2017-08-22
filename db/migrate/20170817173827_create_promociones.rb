class CreatePromociones < ActiveRecord::Migration[5.1]
  def change
    create_table :promociones do |t|
      t.text :titulo
      t.text :descripcion

      t.timestamps
    end
  end
end
