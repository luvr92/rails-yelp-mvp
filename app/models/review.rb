class Review < ApplicationRecord
  belongs_to :Restaurant
  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: (1..5).to_a }
end
