# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{name: "Trey", email: "trey@email.com"},
										 {name: "Kurt", email: "kurt@email.com"},
										 {name: "Akin", email: "akin@email.com"},
										 {name: "Alex", email: "alex@email.com"},
										 {name: "Kadar", email: "kadar@email.com"}])

users.each do |u|
	random_string = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
	u.jokes.create(content: random_string)
end