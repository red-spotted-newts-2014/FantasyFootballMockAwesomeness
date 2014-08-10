class ComputersController < ApplicationController
  skip_before_filter :verify_authenticity_token

  # def update_pick
  #   respond_to do |format|
  #     p format
  #     # format.json {render json: '[3, 9, 10]'}
  #   end
  # end

  def index
  	@computer = Computer.new(1,4)
  	@computer_picks = @computer.computer_picks
  	@player_num = @computer.player_numbers(@computer_picks)

  end

 def draft_pick

 end

end
