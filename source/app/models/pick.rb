class Pick < ActiveRecord::Base
  belongs_to :user
  belongs_to :draft
  has_one :player
end
