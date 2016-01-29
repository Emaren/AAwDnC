class Product < ActiveRecord::Base

  mount_uploader :avatar, AvatarUploader

  belongs_to :client

end
