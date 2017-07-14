class CreatePostings < ActiveRecord::Migration[5.1]
  def change
    create_table :postings do |t|
      t.integer :restaurant_id
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.decimal :payment_rate
      t.boolean :tips
      t.string :job_type
      t.decimal :years_experience
      t.text :comments

      t.timestamps
    end
  end
end
