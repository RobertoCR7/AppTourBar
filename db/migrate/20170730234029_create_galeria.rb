class CreateGaleria < ActiveRecord::Migration[5.1]
  def change
    create_table :galeria do |t|
      t.string :titulo
      t.text :descripcion
      t.string :image_url

      t.timestamps
    end
  end
end
