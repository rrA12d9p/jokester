module JokesHelper
	def user_joke_path_offset(user, joke)

		user_joke_id = user.jokes.order(created_at: :asc).index(joke) + 1

		return user_joke_path(user_id: user.id, id: user_joke_id)
	end
end
