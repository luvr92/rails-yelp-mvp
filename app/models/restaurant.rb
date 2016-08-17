class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "french", "italian", "indian", "japanese", "anglo-saxon", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true, allow_blank: false
  validates :category, inclusion: { in: CATEGORY }, allow_blank: false
  validates :phone_number, presence: true
end
