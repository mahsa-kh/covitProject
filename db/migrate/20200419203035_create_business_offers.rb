class CreateBusinessOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :business_offers do |t|
      t.integer :offer_amount
      t.integer :discount
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
