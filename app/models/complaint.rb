class Complaint < ApplicationRecord
  belongs_to :user
  has_many :comment
  mount_uploader :photo, LocationPhotoUploader
  
end
