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
  # def computer_picks
  # 	num_of_comp_picks = @num_of_picks - 1
  #   comp_pick_array = self.unpicked_players
    #.each_slice(num_of_comp_picks).to_a
  # end

# # return player id
  def player_numbers(player_picked)
    array_numbers = []
    player_picked.each do |x|
        array_numbers << x
    end
    array_numbers
    # num_of_comp_pick = @num_of_picks - 1
    # array_numbers.each_slice(num_of_comp_picks).to_a
  end


  #slices player id into groups of 3
  def player_id_slice(player_array)
    player_id = []
      player_array.each do |player|
        player_id << player.id
      end
    # num_of_comp_pick = @num_of_picks - 1
    player_id.each_slice(3).to_a
  end

  def get_player_id(players)
    player_id = []
    players.each do |player|
      player_id << player.id
    end
    player_id
  end

  def available_players(draft_number)
     p "*" * 100
    p draft_number
    all_player_id= []
    available_players = []
    all_player_id = get_player_id(all_players)
    all_drafted_id = get_player_id(Pick.where(draft_id: draft_number))
    available_players = all_player_id - all_drafted_id
    p available_players

  end

end

