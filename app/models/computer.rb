class Computer < ActiveRecord::Base
  has_many :drafts
  has_many :picks

  def initialize(draft_number, num_of_picks)
    @draft_number = draft_number
    @num_of_picks = num_of_picks
  end

  def all_players
  	players = Player.all
  end

  def unpicked_players
  	pick_player_array = []
  	picks = Pick.where(draft_id: @draft_number)
	  	picks.each do |pick|
	  		pick_player_array << pick.player
	  	end
    unpicked_players = self.all_players - pick_player_array
  end

# returns picks of the computer
  def computer_picks
  	num_of_comp_picks = @num_of_picks - 1
    comp_pick_array = self.unpicked_players.each_slice(num_of_comp_picks).to_a
  end

# # return player id
  def player_numbers(player_picked)
    array_numbers = []
    player_picked.each do |x|
       x.each do |y|
        array_numbers << y.id
       end
    end
    array_numbers
  end



end

