class ChangeImageColumn < ActiveRecord::Migration[5.1]
  def change
  	rename_column :galeria, :image_url, :image
  end
end
