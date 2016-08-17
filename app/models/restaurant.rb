class Restaurant < ApplicationRecord
  CATEGORY = ["Chinese", "French", "Italian", "Indian", "Japanese", "Anglo-Saxon", "Middle-Eastern"]
  has_many :reviews
end
