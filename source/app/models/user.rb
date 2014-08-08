class User < ActiveRecord::Base
  has_many :drafts
  has_many :picks, through: :drafts
  
end
