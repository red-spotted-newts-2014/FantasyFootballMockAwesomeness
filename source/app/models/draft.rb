class Draft < ActiveRecord::Base
  belongs_to :user
  has_many :picks
end
