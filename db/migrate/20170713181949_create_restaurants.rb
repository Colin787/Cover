class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :street_address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :restaurant_type
      t.text :description

      t.timestamps 
    end
  end
end
