class Client < ActiveRecord::Base

  has_many :products

  validates :first_name, presence: true, uniqueness: true
  validates :last_name, presence: true, uniqueness: true


  def to_s
    "#{first_name}" "#{last_name}"
  end

end
