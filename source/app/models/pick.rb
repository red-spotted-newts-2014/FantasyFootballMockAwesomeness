class Pick < ActiveRecord::Base
  belongs_to :draft
  belongs_to :user
  has_one :player
end
