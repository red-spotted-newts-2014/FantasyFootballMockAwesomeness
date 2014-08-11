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

  def get_player_id(players)
    player_id = []
    players.each do |player|
      player_id << player.id
    end
    player_id
  end

  def available_players(draft_number)
    all_player_id= []
    available_players = []
    all_player_id = get_player_id(all_players)
    all_drafted_id = get_player_id(Pick.where(draft_id: draft_number))
    available_players = all_player_id - all_drafted_id
    available_players
  end

end

