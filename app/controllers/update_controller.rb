class UpdateController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def random_array
    arr = (1..100).to_a
    arr.sample(3)
  end

  def update_pick
    respond_to do |format|
      p "You are in the respond_to block"
      p format
      p "These are params"
      p params[:id]
      p "This is after p format"
      send_back = random_array.to_s
      format.json {render json: send_back}
    end
  end
end
