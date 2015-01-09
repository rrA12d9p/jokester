class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.belongs_to :user, null: false
      t.text :content, null: false

      t.timestamps null: false
    end
  end
end
