class Order < ApplicationRecord
  # belongs_to :order_item
  has_many :order_items, dependent: :destroy
  belongs_to :user
  monetize :total_amount_cents
  before_save :set_expiration_date

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
        if @order_item.quantity == 0
          @order_item.quantity = 0
        else
          @order_item.quantity -= 1
        end
        @order_item.save
      end
      @order_item
  end

private

  def set_expiration_date
    puts self
    self.exp_date = Date.today + 10
    puts self
  end

end

