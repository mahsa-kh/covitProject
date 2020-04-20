class Business < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :business_offers
  has_many :order_items, through: :business_offer
  validates :name, :description, :category, presence: true
  validates :instagram, uniqueness: true
end
