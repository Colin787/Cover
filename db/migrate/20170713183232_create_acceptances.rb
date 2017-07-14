class CreateAcceptances < ActiveRecord::Migration[5.1]
  def change
    create_table :acceptances do |t|
      t.integer :posting_id
      t.integer :worker_id
      t.time    :expiration_time

      t.timestamps
    end
  end
end
