class Complaint < ApplicationRecord
  belongs_to :user
  has_many :comment, dependent: :destroy
  has_many :like, dependent: :destroy
  mount_uploader :photo, LocationPhotoUploader
  
  def self.search(search)
        where("lower(title) LIKE ?", "%#{search.downcase}%")
  end
  
end
