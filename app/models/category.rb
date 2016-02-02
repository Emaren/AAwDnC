class Category < ActiveRecord::Base

  validates :name, presence: true,
  uniqueness: true

  belongs_to :product

  has_many :packets


end
