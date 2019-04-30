class Complaint < ApplicationRecord
  belongs_to :person
  
  mount_uploader :photo, LocationPhotoUploader
  
end
