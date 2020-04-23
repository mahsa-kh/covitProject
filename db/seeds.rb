require 'open-uri'
require "faker"
Business.destroy_all
BusinessOffer.destroy_all
Order.destroy_all
OrderItem.destroy_all
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

  5.times do
    user = User.new(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: Faker::Alphanumeric.alpha(number: 10),
      owner: Faker::Boolean.boolean,
    )
    user.save!  
  end

  user1 = User.new(
    first_name: "User1-Customer",
    last_name: "User1-Customer",
    email: "User1-Customer@gmail.com",
    password: "User1-Customer",
    owner: false,
  )
  user1.save!

  user2 = User.new(
    first_name: "User2-Customer",
    last_name: "User2-Customer",
    email: "User2-Customer@gmail.com",
    password: "User2-Customer",
    owner: false,
  )
  user2.save!

  for i in 1..5 do
        User.create(
        first_name: "User#{i}-Owner",
        last_name: "User#{i}-Owner",
        email: "User#{i}-Owner@gmail.com",
        password: "User#{i}-Owner",
        owner: true,
      )
        i += 1;
  end

  puts "Users Created"




puts "Categories Creation"
  # has_many :businesses
  # validates :category_name, uniqueness: true
  # t.text "category_name"

    c = Category.new(category_name: "Cafe")
    c.save!
    Category.create(category_name: "Gym")
    Category.create(category_name: "Resturaunt")

puts "Categories Created"







puts "Businesses Creation"
users = User.where(owner: true)
for i in 3..8 do
    business = Business.new(
      name: "User#{i}-Business",
      website: "User#{i}-Business.com",
      address: "User#{i}-Business@gmail.com",
      instagram: "insta:User#{i}-Business",
      description: "some description about User#{i}-Business",
      category_id: (Category.all).sample.id,
      user_id: users.sample.id
      )

    business.user = User.all.sample  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
    business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
    file = URI.open('https://source.unsplash.com/800x800/?store')
    business.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    business.save!
    for j in 1..4 do
        BusinessOffer.create(
        offer_amount: rand(100..200),
        discount: rand(10..20),
        price_cents: rand(50..150),
        business: business
        )
        j += 1
    end

  i += 1
end

puts "Businesses Created"






puts "Orders Creation"

for i in 1..5 do
    order = Order.new(
      order_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
      exp_date: Faker::Date.forward(days: 23),
      confirmation_no: Faker::Number.number(digits: 10), # it's a number not a text
      payment_no: Faker::Number.number(digits: 10), # it's a number not a text
      paid: Faker::Boolean.boolean,
      owner_paid: Faker::Boolean.boolean,
      user_id: rand(1..2),
      total_amount_cents: rand(400..500),
      gift: Faker::Boolean.boolean
      )
    order.save!
    for j in 1..4 do
        OrderItem.create(
          quantity:  rand(1..5),
          gift: Faker::Boolean.boolean,
          gift_email: Faker::Internet.email,
          business_offer_id: (BusinessOffer.all).sample.id,
          order: order
        )
        j += 1
    end
  i += 1
end


puts "Orders Created"







