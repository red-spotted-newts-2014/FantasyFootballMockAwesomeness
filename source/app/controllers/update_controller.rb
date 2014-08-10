class UpdateController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def update_pick
    respond_to do |format|
      p "You are in the respond_to block"
      p format
      p "This is after p format"
      format.json {render json: '[3, 9, 10]'}
    end
  end
end
