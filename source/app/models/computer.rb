class Computer < ActiveRecord::Base
  has_many :drafts
  has_many :picks


  def all_players
  	players = Player.all
  end

  def unpicked_players(draft_number)
  	pick_player_array = []
  	picks = Pick.where(draft_id: draft_number)
	  	picks.each do |pick| 
	  		pick_player_array << pick.player
	  	end
  	unpicked_players = self.all_players - pick_player_array
  end


end

