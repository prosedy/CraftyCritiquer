class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.string :sentence_hash
      t.integer :critique_id

      t.timestamps
    end
    add_index :comments, :critique_id
  end
end
