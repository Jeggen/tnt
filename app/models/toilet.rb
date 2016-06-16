class Toilet < ActiveRecord::Base
  belongs_to :user
  
  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end
end
