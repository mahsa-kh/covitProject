class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.text :name
      t.text :website
      t.text :address
      t.text :instagram
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
