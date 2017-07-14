class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.integer :posting_id
      t.integer :acceptance_id

      t.timestamps
    end
  end
end
