class ComputersController < ApplicationController
  def index
  	@computer = Computer.new
  	@all_players = @computer.all_players
  	@unpicked_players = @computer.unpicked_players(1)
  end
end