class Pick < ActiveRecord::Base
  belongs_to :user
  belongs_to :round
  has_one :player
end
