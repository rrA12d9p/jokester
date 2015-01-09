class JokesController < ApplicationController
	def index
		@jokes=Joke.order(updated_at: :desc)
	end
	def show
		@joke = Joke.find(params[:id])
	end


end
