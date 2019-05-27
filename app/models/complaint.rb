class Complaint < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, LocationPhotoUploader
  
end
