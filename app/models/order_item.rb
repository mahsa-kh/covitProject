class OrderItem < ApplicationRecord
  belongs_to :business_offer
  belongs_to :order
end
