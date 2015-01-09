class AddUserJokeIdToJoke < ActiveRecord::Migration
  def change
  	add_column :jokes, :user_joke_id, :integer
  end
end
