class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.integer :worker_id
      t.string :job_type
      t.decimal :years_experience

      t.timestamps
    end
  end
end
