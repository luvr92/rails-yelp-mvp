class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant_id, presence: true, allow_nil: false
  validates :content, presence: true, allow_blank: false
  validates :rating, presence: true, inclusion: { in: (0..5) }, allow_blank: false
end
