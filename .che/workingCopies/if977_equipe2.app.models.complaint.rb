class Complaint < ApplicationRecord
  belongs_to :person
  has_many :comment
end
