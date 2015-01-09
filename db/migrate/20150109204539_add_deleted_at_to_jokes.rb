class AddDeletedAtToJokes < ActiveRecord::Migration
  def change
    add_column :jokes, :deleted_at, :datetime
    add_index :jokes, :deleted_at
  end
end
