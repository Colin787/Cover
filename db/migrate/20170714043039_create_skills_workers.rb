class CreateSkillsWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :skills_workers do |t|
      t.integer :worker_id
      t.integer :skill_id
      t.decimal :experience
      t.text :description

      t.timestamps
    end
  end
end
