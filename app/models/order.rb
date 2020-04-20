class Order < ApplicationRecord
  # belongs_to :order_item
  has_many :order_items
  belongs_to :user
end

