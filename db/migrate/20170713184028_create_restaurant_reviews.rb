class CreateRestaurantReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_reviews do |t|
      t.integer :restaurant_id
      t.integer :worker_id
      t.text    :comment
      t.integer :rating

      t.timestamps
    end
  end
end
