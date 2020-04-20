class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.date :exp_date
      t.text :confirmation_no
      t.text :payment_no
      t.boolean :paid
      t.boolean :owner_paid

      t.timestamps
    end
  end
end
