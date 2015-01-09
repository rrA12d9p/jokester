class Vote < ActiveRecord::Base
	belongs_to :joke
	belongs_to :user

	validates_presence_of :joke_id, :user_id, :vote
end
