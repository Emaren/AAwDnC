class Tagging < ActiveRecord::Base

  belongs_to :packet
  belongs_to :product
  belongs_to :tag
end
