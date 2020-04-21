class Order < ApplicationRecord
  # belongs_to :order_item
  has_many :order_items, dependent: :destroy
  belongs_to :user


  def add_item_quantity(business_offer_id)
      @order_item = OrderItem.where("order_id = ? AND business_offer_id = ?", self.id, business_offer_id.to_i).first

      if !@order_item.nil?
        @order_item.quantity += 1
        @order_item.save
      else
        @order_item =  OrderItem.new(business_offer_id: business_offer_id,
          quantity: 1,
          order_id: self.id)
        @order_item.save
      end

      @order_item
  end

  def decrease_item_quantity(business_offer_id)
      @order_item = OrderItem.where("order_id = ? AND business_offer_id = ?", self.id, business_offer_id.to_i).first
      if !@order_item.nil?
        @order_item.quantity -= 1
        @order_item.save
      end
      @order_item
  end
end

