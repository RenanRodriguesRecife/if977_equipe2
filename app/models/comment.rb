class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :complaint
  has_one :user
end
