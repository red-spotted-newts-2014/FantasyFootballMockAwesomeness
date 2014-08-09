# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'csv'
# sid = User.create(email: "sidpatel13@gmail.com", password: "password")

# CSV.foreach('db/fmd_player_rankings.csv', :headers => true, :col_sep => ',') do |row|
#   Player.create(rank: row[0], first_name: row[3], last_name: row[2], position: row[4], bye_week: row[7], ADP: row[6])
# end

draft = Draft.create(difficulty_level: "easy" , draft_type: "standard" , number_of_rounds: 10, user_id: 1)
draft2 = Draft.create(difficulty_level: "hard" , draft_type: "standard" , number_of_rounds: 10, user_id: 1)


10.times do
  Pick.create(pick_number: rand(1..10), user_id: rand(4), draft_id: ["1", "2"].sample)
end


	Player.create(rank: 1, first_name: "john", last_name: "david", position: "RB", bye_week: 7, ADP: 2.27,  pick_id: 1)
	Player.create(rank: 2, first_name: "harris", last_name: "teeter", position: "RB", bye_week: 7, ADP: 2.27,  pick_id: 2)
	Player.create(rank: 3, first_name: "wallace", last_name: "lopez", position: "RB", bye_week: 7, ADP: 2.27,  pick_id: 3)
	Player.create(rank: 4, first_name: "henry", last_name: "davis", position: "RB", bye_week: 7, ADP: 2.27,  pick_id: 4)
	Player.create(rank: 5, first_name: "jerry", last_name: "garcia", position: "RB", bye_week: 7, ADP: 2.27,  pick_id: 5)
