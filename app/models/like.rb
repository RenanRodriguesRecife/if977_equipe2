class Like < ApplicationRecord
  belongs_to :complaint, counter_cache: true
  belongs_to :user
end
