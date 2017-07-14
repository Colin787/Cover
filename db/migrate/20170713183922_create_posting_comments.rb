class CreatePostingComments < ActiveRecord::Migration[5.1]
  def change
    create_table :posting_comments do |t|
      t.integer :posting_id
      t.integer :worker_id
      t.text    :comment

      t.timestamps
    end
  end
end
