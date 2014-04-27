class AddTokenizedToCritiques < ActiveRecord::Migration
  def change
    add_column :critiques, :tokenized, :text
  end
end
