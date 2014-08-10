class ComputersController < ApplicationController
  
  def index
  	@computer = Computer.new(1, 4)
  	@all_players = @computer.all_players
  	@unpicked_players = @computer.unpicked_players
  	@computer_picks = @computer.computer_picks
  	@player_num = @computer.player_numbers(@computer_picks)
  end
 
 def draft_pick

 end

end