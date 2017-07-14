class CreateCategoriesRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :categories_restaurants do |t|
      t.integer :restaurant_id
      t.integer :category_id

      t.timestamps
    end
  end
end
