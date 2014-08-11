class UpdateController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def random_array
    arr = (1..100).to_a
    arr.sample(3)
  end

  def update_pick
    respond_to do |format|

      Pick.create(draft_id: 1, pick_number: Draft.find(1).picks.size+1, user_id: params[:id].to_i, player_id: params[:id].to_i)
      format
      @computer = Computer.new(1,4)
      @computer.available_players(1)
      drafted_players = @computer.available_players(1)

      drafted_players.take(3).each do |x|
        Pick.create(draft_id: 1, pick_number: Draft.find(1).picks.size+1, user_id: 1%4, player_id: x)
      end
      format.json {render json:  drafted_players.take(3)}

    end
  end
end
