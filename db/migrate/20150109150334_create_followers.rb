class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
    	t.belongs_to :follower, class_name: "User", null: false
    	t.belongs_to :followed, class_name: "User", null: false

      t.timestamps null: false
    end
  end
end
