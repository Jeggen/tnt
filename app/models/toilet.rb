class Toilet < ActiveRecord::Base
  belongs_to :user
  has_many :visits

  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end
end
