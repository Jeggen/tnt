class NewToilet < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
