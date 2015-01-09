class Vote < ActiveRecord::Base
	before_save :validate_one_joke_vote_per_user

	belongs_to :joke
	belongs_to :user

	validates_presence_of :joke_id, :user_id, :vote

	def validate_one_joke_vote_per_user
		# find voter object from user_id on vote
		voter = self.user

		# find joke object from joke_id on vote
		joke = self.joke
		
		# check if this joke already has a vote from this user
		if joke.votes.find_by(user_id: voter.id)
			return false
		else
			return true
		end
	end
end
