# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
sid = User.create(email: "sidpatel13@gmail.com", password: "password")

CSV.foreach('db/fmd_player_rankings.csv', :headers => true, :col_sep => ',') do |row|
  Player.create(rank: row[0], first_name: row[3], last_name: row[2], position: row[4], bye_week: row[7], ADP: row[6])
end
