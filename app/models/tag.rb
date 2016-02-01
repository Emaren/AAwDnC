class Tag < ActiveRecord::Base

  has_many :taggings
  has_many :products, through: :taggings

  validates :name, presence: true, uniqueness: true

end
