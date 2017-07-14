class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.integer :user_id
      t.string :postal_code
      t.string :image

      t.timestamps
    end
  end
end
