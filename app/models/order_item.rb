class OrderItem < ApplicationRecord
  belongs_to :business_offer
  belongs_to :business, through: :business_offer
  belongs_to :order
end
