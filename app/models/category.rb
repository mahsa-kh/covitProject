class Category < ApplicationRecord
  has_many :businesses
  validates :category_name, uniqueness: true
end
