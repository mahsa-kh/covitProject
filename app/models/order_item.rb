class OrderItem < ApplicationRecord
  belongs_to :business_offer, dependent: :destroy
  belongs_to :order
end
