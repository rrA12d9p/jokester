class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    	t.belongs_to :joke, null: false
    	t.belongs_to :user, through: :joke, null: false
      t.integer :vote, default: 0, numericality: { greater_than_or_equal_to: -1, less_than_or_equal_to: 1 }

      t.timestamps null: false
    end
  end
end
