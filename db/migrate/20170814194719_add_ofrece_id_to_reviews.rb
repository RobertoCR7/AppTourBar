class AddOfreceIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :ofrece_id, :integer
  end
end
