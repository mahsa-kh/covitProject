class Category < ApplicationRecord
  has_many :businesses, dependent: :destroy
  validates :category_name, uniqueness: true
end
