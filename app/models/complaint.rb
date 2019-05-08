class Complaint < ApplicationRecord
  
  mount_uploader :photo, LocationPhotoUploader
  
end
