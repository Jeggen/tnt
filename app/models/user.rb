class User < ActiveRecord::Base
  has_many :toilets
  has_many :bookings

  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end

end
