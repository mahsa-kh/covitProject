class Business < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :category
  has_many :business_offers, dependent: :destroy
  has_many :order_items, through: :business_offers
  validates :name, :description, :category, presence: true
  validates :instagram, :name, uniqueness: true

  def highest_offer
    business_offer = self.business_offers
    sorted = business_offer.sort_by { |k| k["discount"] }.last
  end
end

