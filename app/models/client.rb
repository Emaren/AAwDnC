class Client < ActiveRecord::Base

  has_many :products

  def to_s
    "#{first_name}" "#{last_name}"
  end

end
