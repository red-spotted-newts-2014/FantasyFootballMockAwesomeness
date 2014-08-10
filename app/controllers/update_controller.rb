class UpdateController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def random_array
    arr = (1..100).to_a
    arr.sample(3)
  end

  def update_pick
    respond_to do |format|
      format
      # Pick.create(draft_id: 1, pick_number: Draft.find(1).picks.size+1, user_id: 1)

      # @player = Player.find(params[:id])
      # @player.update_attributes(pick_id: )

      @computer = Computer.new(1,4)
      @computer_picks = @computer.computer_picks
      @computer_picks.size
      @player_num = @computer.player_numbers(@computer_picks)
      # @player_num
      "++++++++++++++++++++++++++++++++++++++++++++size"
      p @player_num
      player = @player_num.each_slice(3).to_a
      # p player[0]
      # p params[:id]
      player[0].each do |x|
        Pick.create(draft_id: 1, pick_number: Draft.find(1).picks.size+1, user_id: 1%4)
      end

      "++++++++++++++++++++++++++++++++draftsize++"
      Draft.find(1).picks.size
      # send_back = random_array.to_s
      format.json {render json:  player[0]}

    end
  end
end
