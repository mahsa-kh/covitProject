class AddGiftToOrderItem < ActiveRecord::Migration[6.0]
  def change
    add_column :order_items, :gift, :boolean
  end
end
