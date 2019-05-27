class Like < ApplicationRecord
  belongs_to :complaint
  belongs_to :user
end
