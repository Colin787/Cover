class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.integer :job_id
      t.integer :worker_id
      t.string :status

      t.timestamps
    end
  end
end
