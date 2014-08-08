class Draft < ActiveRecord::Base
  belongs_to :user
  has_many :rounds
end
