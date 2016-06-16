class Toilet < ActiveRecord::Base
  belongs_to :user
<<<<<<< HEAD
  has_many :bookings
=======
  
  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end
>>>>>>> e2b88248311be93d2a43d58ad0b82c701c719255
end
