class User < ActiveRecord::Base
	has_many :jokes
	has_many :followers

	validates_presence_of :name, :email
end
