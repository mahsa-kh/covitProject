class OrderItem < ApplicationRecord
  belongs_to :business_offer  # .business_offer
  belongs_to :order           # .oder
end
