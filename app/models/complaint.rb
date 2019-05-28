class Complaint < ApplicationRecord
  belongs_to :user
  has_many :comment
  has_many :like, dependent: :destroy
  mount_uploader :photo, LocationPhotoUploader
  
end
