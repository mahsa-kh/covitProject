class Order < ApplicationRecord
  # belongs_to :order_item
  has_many :order_items, dependent: :destroy
  belongs_to :user
end

