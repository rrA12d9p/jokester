require 'rails_helper'

RSpec.describe User, :type => :model do
	context "already voted" do
			it "shouldn't be able to vote twice" do
				@joke_owner = User.create(name: "Trey", email: "trey@email.com")
				@joke_content = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
				@joke = @joke_owner.jokes.create(content: @joke_content)

				@voter = User.create(name: "Alex", email: "alex@email.com")

				# vote once
				@joke.votes.create(user_id: @voter.id, vote: 1)

				# try to vote again
				@joke.votes.create(user_id: @voter.id, vote: 1)

				expect(@joke.votes.count).to eq(1)
			end
	end
end
