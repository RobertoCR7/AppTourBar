class CreateReservacions < ActiveRecord::Migration[5.1]
  def change
    create_table :reservacions do |t|
      t.text :cantidad

      t.timestamps
    end
  end
end
