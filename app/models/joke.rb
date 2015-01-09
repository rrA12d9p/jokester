class Joke < ActiveRecord::Base
	acts_as_paranoid
	before_create :add_user_joke_id

	belongs_to :user
	has_many :votes

	validates_presence_of :user, :content

	def add_user_joke_id
		self.user_joke_id = self.user.jokes.with_deleted.count + 1
	end
end
