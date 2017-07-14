class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.integer :user_id
      t.string :restaurant_name
      t.string :street_address
      t.string :city
      t.string :province
      t.string :postal_code
      t.text :description
      t.string :image

      t.timestamps 
    end
  end
end
