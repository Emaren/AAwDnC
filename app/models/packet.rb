class Packet < ActiveRecord::Base
  belongs_to :category
  belongs_to :product
  belongs_to :tag
end
