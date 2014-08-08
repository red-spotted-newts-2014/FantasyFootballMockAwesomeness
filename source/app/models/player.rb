class Player < ActiveRecord::Base
  belongs_to :pick
  validates :rank, :first_name, :last_name, :position, :bye_week, :ADP, presence: true

end
