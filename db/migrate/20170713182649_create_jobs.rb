class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer :restaurant_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :rate
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
