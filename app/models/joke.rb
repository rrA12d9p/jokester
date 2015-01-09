class Joke < ActiveRecord::Base
	belongs_to :user
	has_many :votes

	validates_presence_of :user, :content
end
