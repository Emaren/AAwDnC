class Tag < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

  has_many :taggings
  has_many :products, through: :taggings
  has_many :packets

end
