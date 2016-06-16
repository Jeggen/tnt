class Toilet < ActiveRecord::Base
  belongs_to :user
<<<<<<< HEAD
  has_many :visits
=======

  has_many :bookings

>>>>>>> 4d3322ecb4166cefc01536e6b8786266761ce2db

  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end
<<<<<<< HEAD
=======

>>>>>>> 4d3322ecb4166cefc01536e6b8786266761ce2db
end
