class Product < ActiveRecord::Base

  mount_uploader :avatar, AvatarUploader



  scope :unreleased, -> {
  where(:released_at => nil)
}
  scope :released, -> {
  where(:released_at => !nil)
}

  validates :title, {presence:   true,
                     uniqueness: {message: "Title exists already!"},
                     length:     {minimum: 3}}

  validates :description, presence:   true,
                   uniqueness: {scope: :title}

  validates :price, presence: true


  belongs_to :client
  belongs_to :category

  has_many :taggings
  has_many :tags, through: :taggings
  has_many :packets


end
