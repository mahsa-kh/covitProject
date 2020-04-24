class AddPriceToBusinessOffers < ActiveRecord::Migration[6.0]
  def change
    add_monetize :business_offers, :price, currency: { present: false }
  end
end
