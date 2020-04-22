class Business < ApplicationRecord
  belongs_to :user, dependent: :destroy
  # belongs_to :user, optional: true
  belongs_to :category
  has_many :business_offers, dependent: :destroy
  has_many :order_items, through: :business_offers
  validates :name, :description, :address, :category, :photo, presence: true
  validates :instagram, :name, uniqueness: true
  has_one_attached :photo
end
