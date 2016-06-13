class Booking < ActiveRecord::Base
  belongs_to :toilet
  belongs_to :user
end
