class User < ActiveRecord::Base
  has_many :drafts
  has_many :rounds, through: :drafts
  has_many :picks, through: :rounds
  
end
