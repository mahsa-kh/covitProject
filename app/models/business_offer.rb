class BusinessOffer < ApplicationRecord
  belongs_to :business, dependent: :destroy
  has_many :order_items, dependent: :destroy
  has_many :orders, through: :order_items
  validates :offer_amount, uniqueness: { scope: :business,
    message: "The amount must be unique"}
  validates :offer_amount, :discount, presence: true

  monetize :price_cents
end
