require "faker"
Business.destroy_all
Order.destroy_all
OrderItem.destroy_all
BusinessOffer.destroy_all
User.destroy_all
Category.destroy_all



# puts "Business Offers Creation"
#   # belongs_to :business, dependent: :destroy
#   # has_many :order_items
#   # has_many :orders, through: :order_items
#   # validates :offer_amount, uniqueness: true
#   # validates :offer_amount, :discount, presence: true
#   # t.integer "offer_amount"
#   # t.integer "discount"
#   2.times do
#     business_offer = BusinessOffer.new(
#       offer_amount: Faker::Commerce.price,
#       discount: Faker::Number.within(range: 1..10)
#     )
#     business_offer.save
#   end
# puts "Business Offers Created"


puts "Users Creation"
  # validates :first_name, :last_name, :email, :password, presence: true
  # validates :email, presence: true, uniqueness: true
  # t.string "email", default: "", null: false
  # t.string "encrypted_password", default: "", null: false
  # t.string "first_name"
  # t.string "last_name"
  # t.boolean "owner", default: false

    user1 = User.new(
      first_name: "User1-Customer",
      last_name: "User1-Customer",
      email: "User1-Customer@gmail.com",
      password: "User1-Customer",
      owner: flase,
    )
    user1.save!


    user2 = User.new(
      first_name: "User2-Customer",
      last_name: "User2-Customer",
      email: "User2-Customer@gmail.com",
      password: "User2-Customer",
      owner: flase,
    )
    user2.save!

    user3 = User.new(
      first_name: "User3-Owner",
      last_name: "User3-Owner",
      email: "User3-Owner@gmail.com",
      password: "User3-Owner",
      owner: true,
    )
    user3.save!
puts "Users Created"





puts "Categories Creation"
  # has_many :businesses
  # validates :category_name, uniqueness: true
  # t.text "category_name"

    Category.create(category_name: "Cafe")
    Category.create(category_name: "Gym")
    Category.create(category_name: "Resturaunt")

puts "Categories Created"






puts "Businesses Creation"
  # belongs_to :user, dependent: :destroy
  # has_many :business_offers
  # has_many :order_items, through: :business_offers
  # validates :name, :description, :category, presence: true
  # validates :instagram, :name, uniqueness: true
  # t.text "name"
  # t.text "website"
  # t.text "address"
  # t.text "instagram"
  # t.text "description"

    business = Business.create(
      name: "User3-Business",
      website: "User3-Business.com",
      address: "User3-Business@gmail.com",
      instagram: "insta:User3-Business",
      description: "some description about User3-Business",
      )




    business.user = User.all.sample
    business.category = Category.all.sample
    business.save!
      2.times do
        business_offer = BusinessOffer.new(
        offer_amount: Faker::Commerce.price,
        discount: Faker::Number.within(range: 1..10),
        business: business  # shopping_list.user = user
        )
        business_offer.save!
      end
  end
puts "Businesses Created"








# puts "Order Items Creation"
#   # belongs_to :business_offer
#   # belongs_to :business, through: :business_offer
#   # belongs_to :order
#   # t.integer "quantity"
#   # t.boolean "gift"
#   # t.text "gift_email"
#   2.times do
#     order_item = OrderItem.new(
#       quantity:  Faker::Number.within(range: 1..10),
#       gift: Faker::Boolean.boolean,
#       gift_email: Faker::Internet.email,
#     )
#     order_item.save
#   end
# puts "Order Items Created"





puts "Orders Creation"
 # has_many :order_items, dependent: :destroy
 # belongs_to :user
 # t.date "order_date"
 # t.date "exp_date"
 # t.text "confirmation_no"
 # t.text "payment_no"
 # t.boolean "paid"
 # t.boolean "owner_paid"
  2.times do
    order = Order.new(
      order_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
      exp_date: Faker::Date.forward(days: 23),
      confirmation_no: Faker::Number.number(digits: 10), # it's a number not a text
      payment_no: Faker::Number.number(digits: 10), # it's a number not a text
      paid: Faker::Boolean.boolean,
      owner_paid: Faker::Boolean.boolean,
      user_id: (User.all).sample.id
      )
    order.save!
      2.times do
        order_item = OrderItem.new(
          quantity:  Faker::Number.within(range: 1..10),
          gift: Faker::Boolean.boolean,
          gift_email: Faker::Internet.email,
          business_offer_id: (BusinessOffer.all).sample.id,  # Since ORDER ITEMS needs also
          # business_offer_id: we write "business_offer_id: (BusinessOffer.all).sample.id"
          order: order  # They are already nested therefore we use "order:order"
        )
        order_item.save!
      end
  end
puts "Orders Created"







