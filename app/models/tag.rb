class Tag < ActiveRecord::Base

  has_many :taggings
  has_many :products, through: :taggings
  
end
