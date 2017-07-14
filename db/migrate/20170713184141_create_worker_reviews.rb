class CreateWorkerReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :worker_reviews do |t|
      t.integer :worker_id
      t.integer :restaurant_id
      t.text    :comment
      t.integer :rating

      t.timestamps
    end
  end
end
