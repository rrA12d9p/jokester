class JokesController < ApplicationController
	def index
		@jokes = Joke.order(created_at: :asc)
	end
	def show
		# find the joke relative to a user, not all jokes
		# i.e. /users/5/jokes/5 is the default for user 5's
		# first joke when there were 4 other users with jokes already
		# instead, we want /users/5/jokes/1 to show the user's first joke
		@user = User.find(params[:user_id])
		@joke = @user.jokes.find_by(user_joke_id: params[:id])
	end
end
