class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :worker_id
      t.integer :posting_id
      t.text    :comment

      t.timestamps
    end
  end
end
