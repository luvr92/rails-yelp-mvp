class Restaurant < ApplicationRecord
  CATEGORY = ["Chinese", "French", "Italian", "Indian", "Japanese", "Anglo-Saxon", "Middle-Eastern"]
  has_many :reviews
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
