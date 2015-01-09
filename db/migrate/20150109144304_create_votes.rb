class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    	t.belongs_to :joke
    	t.belongs_to :user
      t.integer :vote

      t.timestamps null: false
    end
  end
end
