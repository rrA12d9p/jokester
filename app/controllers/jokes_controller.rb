class JokesController < ApplicationController
	def index
		@jokes = Joke.order(created_at: :asc)
	end
	def show
		# find the joke relative to a user, not all jokes
		# i.e. /users/5/jokes/5 is the default for user 5's
		# first joke when there were 4 other users with jokes already
		# instead, we want /users/5/jokes/1 to show the user's first joke
		
		@user_joke_id = params[:user_joke_id].to_i
		@user = User.find(params[:user_id])
		@joke = @user.jokes.order(created_at: :asc).offset(@user_joke_id-1).first
	end
end
