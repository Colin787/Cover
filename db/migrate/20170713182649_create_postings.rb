class CreatePostings < ActiveRecord::Migration[5.1]
  def change
    create_table :postings do |t|
      t.integer :restaurant_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :rate
      t.string :tips
      t.string :skill
      t.decimal :experience
      t.string :status

      t.timestamps
    end
  end
end
