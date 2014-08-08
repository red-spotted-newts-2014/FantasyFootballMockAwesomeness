# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sid = User.create(email: "sidpatel13@gmail.com", password_digest: "password")

draft1 = sid.drafts.create()

round = Round.create(round_number: 1, draft_id: draft1.id)

pick = round.picks.create(pick_number: 1, user_id: 1, round_id: 1)	

Player.create(rank: 1, first_name: "Adrian", last_name: "Peterson", position: "RB", bye_week: 7, ADP: 2.24, pick_id: 1)
