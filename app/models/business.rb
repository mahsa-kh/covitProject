class Business < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :category
  has_many :business_offers, dependent: :destroy
  has_many :order_items, through: :business_offers
  validates :name, :description, :address, :category_id, :photo, presence: true
  validates :instagram, :name, uniqueness: true
  has_one_attached :photo

  def highest_offer
    business_offer = self.business_offers
    sorted = business_offer.sort_by { |k| k["discount"] }.last
  end

end

