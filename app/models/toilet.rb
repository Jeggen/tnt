class Toilet < ActiveRecord::Base
  belongs_to :user
  has_many :visits
  has_many :bookings

  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end
end
