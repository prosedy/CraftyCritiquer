class CreateCritiques < ActiveRecord::Migration
  def change
    create_table :critiques do |t|
      t.text :body

      t.timestamps
    end
  end
end
