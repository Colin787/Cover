class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_type
      t.string :email
      t.string :password_digest
      t.integer :cell
      t.string :first_name
      t.string :last_name
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
