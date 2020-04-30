# require 'open-uri'
# require "faker"

# Business.destroy_all
# BusinessOffer.destroy_all
# Order.destroy_all
# OrderItem.destroy_all
# Category.destroy_all
# User.destroy_all



# puts "Users Creation"
# User.create!(
#   first_name: "Mahsa",
#   last_name: "Khamisi",
#   email: "mahsa.kh@gmail.com",
#   password: "MahsaMahsa",
#   owner: false,
# )

# User.create!(
#   first_name: "Sarah",
#   last_name: "Lopez",
#   email: "sara@gmail.com",
#   password: "SaraSara",
#   owner: false,
# )

# User.create!(
#   first_name: "Alex",
#   last_name: "Salva",
#   email: "alex@gmail.com",
#   password: "AlexAlex",
#   owner: false,
# )

# User.create!(
#   first_name: "Panah",
#   last_name: "Panahi",
#   email: "Panah@gmail.com",
#   password: "PanahPanah",
#   owner: false,
# )

# for i in 1..5 do
#   User.create(
#     first_name: "User#{i}-Owner",
#     last_name: "User#{i}-Owner",
#     email: "User#{i}-Owner@gmail.com",
#     password: "User#{i}-Owner",
#     owner: true,
#   )
#   i += 1;
# end
# puts "Users Created"

# puts "Categories Creation"
# Category.create(category_name: "Cafe & Resturaunt")
# Category.create(category_name: "Gym")
# Category.create(category_name: "Bookstore")
# Category.create(category_name: "Beauty Salon")
# Category.create(category_name: "Others")
# puts "Categories Created"

# # puts "Businesses Creation"
# customers = User.where(owner: false)
# users = User.where(owner: true)
# # for i in 3..8 do
# #   business = Business.new(
# #     name: "User#{i}-Business",
# #     website: "User#{i}-Business.com",
# #     address: "User#{i}-Business@gmail.com",
# #     instagram: "insta:User#{i}-Business",
# #     description: "some description about User#{i}-Business",
# #     category: Category.all.sampleCategory.all).sample.id,
# #     user_id: users.sample.id
# #   )
# #   business.user = User.all.sample  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
# #   business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
# #   file = URI.open('https://source.unsplash.com/800x800/?store')
# #   business.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# #   business.save!

# #   for j in 1..4 do
# #     BusinessOffer.create(
# #       offer_amount: rand(100..200),
# #       discount: rand(10..20),
# #       price_cents: rand(50..150),
# #       business: business
# #     )
# #     j += 1
# #   end

# #   i += 1
# # end



#   business = Business.new(
#     name: "Kooroo Sushi",
#     website: "kooroosushi.com",
#     address: "Pilinio 7 - Milano",
#     instagram: "KurooSushi",
#     description: "Kooroo Sushi is a family owened business. It was opened in 1999 in Milano. The owner is Mayoumi, who Moved to Milan in 95.
#     She loves to share the tradition of Japanese food with other. ",
#     employee_no: rand(3..12),
#     category: Category.all.sample,
#     user_id: users.sample.id
#   )
#   # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
#   # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
#   file = URI.open('https://source.unsplash.com/1200x1200/?sushi')
#   business.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   business.save!

#   for j in 1..4 do
#     BusinessOffer.create(
#       offer_amount: rand(100..200),
#       discount: rand(10..20),
#       price_cents: rand(50..150),
#       business: business
#     )
#     j += 1
#   end

#     business2 = Business.new(
#     name: "Alhambra Cafe",
#     website: "laboulange.com",
#     address: " Via Alessandro Tadino, 17, 20124 Milano MI",
#     instagram: "AlhambraCafe",
#     description: "This homey locale is brimming with all the ‘good’ stuff (ie food that is cruelty-free, healthy and honestly delicious). Run by a husband-and-wife team, it offers reinterpreted dishes from their homeland Eritrea ",
#     employee_no: rand(3..12),
#     category: Category.all.sample,
#     user_id: users.sample.id
#   )
#   # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
#   # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
#   file = URI.open('https://source.unsplash.com/1200x1200/?cafe')
#   business2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   business2.save!

#   for j in 1..4 do
#     BusinessOffer.create(
#       offer_amount: rand(100..200),
#       discount: rand(10..20),
#       price_cents: rand(50..150),
#       business: business2
#     )
#     j += 1
#   end

#     business3 = Business.new(
#     name: "Ca 'Turati",
#     website: "Caturati.com",
#     address: "Via Filippo Turati, 40 - Milano",
#     instagram: "caturati.milano",
#     description: "We thought and designed this meeting place in the beating heart of Milan,
# between skyscrapers, banks, newspaper offices, multinationals' directions,
# as if it were an extension of our home. ",
#     employee_no: rand(3..12),
#     category: Category.all.sample,
#     user_id: users.sample.id
#   )
#   # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
#   # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
#   file = URI.open('https://source.unsplash.com/1200x1200/?cafe')
#   business3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   business3.save!

#   for j in 1..4 do
#     BusinessOffer.create(
#       offer_amount: rand(100..200),
#       discount: rand(10..20),
#       price_cents: rand(50..150),
#       business: business3
#     )
#     j += 1
#   end

#     business4 = Business.new(
#     name: "Amami Ristorante Pizzeria",
#     website: "http://www.amamiristorante.com/",
#     address: "Via Amerigo Vespucci, 1, 20124 Milano MI",
#     instagram: "amamiristorante",
#     description: "Professionalism and a lot of love! We are a close-knit working group that aims for excellence. From management, to cooking, to room service, we put experience and passion into our work.",
#     employee_no: rand(3..12),
#     category: Category.all.sample,
#     user_id: users.sample.id
#   )
#   # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
#   # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
#   file = URI.open('https://source.unsplash.com/1200x1200/?Pizzeria')
#   business4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   business4.save!

#   for j in 1..4 do
#     BusinessOffer.create(
#       offer_amount: rand(100..200),
#       discount: rand(10..20),
#       price_cents: rand(50..150),
#       business: business4
#     )
#     j += 1
#   end

#     business5 = Business.new(
#     name: "Crazy Cat Café",
#     website: "crazycatcafe.com",
#     address: "Via Napo Torriani, 5, Milan",
#     instagram: "crazycatcafe",
#     description: "The Crazy Cat Café was born from a great love, that for cats, and an unforgettable experience in a Neko Café in Osaka, Japan. In October 2015, the first and only Cat Café in Lombardy opens in Milan and wants to recreate the intimate atmosphere of Japanese neko cafés, ",
#     employee_no: rand(3..12),
#     category: Category.all.sample,
#     user_id: users.sample.id
#   )
#   # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
#   # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
#   file = URI.open('https://source.unsplash.com/1200x1200/?cafe')
#   business5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   business5.save!

#   for j in 1..4 do
#     BusinessOffer.create(
#       offer_amount: rand(100..200),
#       discount: rand(10..20),
#       price_cents: rand(50..150),
#       business: business5
#     )
#     j += 1
#   end

#     business6 = Business.new(
#     name: "Fisiodynamic",
#     website: "Fisiodynamic.com",
#     address: "Via Achille Maiocchi, 8, 20129 Milano MI",
#     instagram: "Fisiodynamic",
#     description: "At the Fisiodynamic Club, in via Maiocchi 8 in Milan (just 150 meters from the MM stop of Porta Venezia), there is everything you can wish for your efficiency, your leisure, your physical fitness.
# The large, welcoming and well-equipped gyms.",
#     employee_no: rand(3..12),
#     category: Category.all.sample,
#     user_id: users.sample.id
#   )
#   # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
#   # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
#   file = URI.open('https://source.unsplash.com/1200x1200/?gym')
#   business6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   business6.save!

#   for j in 1..4 do
#     BusinessOffer.create(
#       offer_amount: rand(100..200),
#       discount: rand(10..20),
#       price_cents: rand(50..150),
#       business: business6
#     )
#     j += 1
#   end

#     business7 = Business.new(
#     name: "Plus One Gym",
#     website: "www.plus1.com",
#     address: " Via Friuli, 8/A/ Cortile Interno, 20135 Milano MI",
#     instagram: "plus1gym",
#     description: "Do they give you a nerd?
# We instead reward you! If you are a university student, enrolled in Plus 1 Gym Concept, for every 30 and Praise we give you 1 month more. ",
#     employee_no: rand(3..12),
#     category: Category.all.sample,
#     user_id: users.sample.id
#   )
#   # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
#   # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
#   file = URI.open('https://source.unsplash.com/1200x1200/?gym')
#   business7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   business7.save!

#   for j in 1..4 do
#     BusinessOffer.create(
#       offer_amount: rand(100..200),
#       discount: rand(10..20),
#       price_cents: rand(50..150),
#       business: business7
#     )
#     j += 1
#   end

#     business8 = Business.new(
#     name: "Offended World",
#     website: "http://www.libreriadelmondooffeso.it/",
#     address: "Piazza S. Simpliciano, 7, 20121 Milan MI",
#     instagram: "libreriadelmondooffeso",
#     description: "Traditional book shop with slow-food eats, wine, aperitifs & coffee, plus outdoor seating. ",
#     employee_no: rand(3..12),
#     category: Category.all.sample,
#     user_id: users.sample.id
#   )
#   # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
#   # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
#   file = URI.open('https://source.unsplash.com/1200x1200/?bookstore')
#   business8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   business8.save!

#   for j in 1..4 do
#     BusinessOffer.create(
#       offer_amount: rand(100..200),
#       discount: rand(10..20),
#       price_cents: rand(50..150),
#       business: business8
#     )
#     j += 1
#   end


#     business9 = Business.new(
#     name: "Milan Women's Library",
#     website: "www.libreriadelledonne.it",
#     address: "Via Pietro Calvi, 29, 20129 Milan MI",
#     instagram: "libreriadelledonne",
#     description: "It is a living reality. It counts more than forty women among its permanent participants. In the years in which the bookshop was born, there was a need to have a place that emphasized women's thinking and writing. ",
#     employee_no: rand(3..12),
#     category: Category.all.sample,
#     user_id: users.sample.id
#   )
#   # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
#   # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
#   file = URI.open('https://source.unsplash.com/1200x1200/?bookstore')
#   business9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   business9.save!

#   for j in 1..4 do
#     BusinessOffer.create(
#       offer_amount: rand(100..200),
#       discount: rand(10..20),
#       price_cents: rand(50..150),
#       business: business9
#     )
#     j += 1
#   end


#     business10 = Business.new(
#     name: "Blow Hair Salon",
#     website: "blow-hair.com",
#     address: "Via Lecco, 2, 20134 Milano MI",
#     instagram: "blowhair",
#     description: "Blow is harmony, energy, the perfect synergy between shapes and colors, personalization and attention to detail, professionalism and innovation.
# Simplicity and good taste are the basis of our style.",
#     employee_no: rand(3..12),
#     category: Category.all.sample,
#     user_id: users.sample.id
#   )
#   # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
#   # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
#   file = URI.open('https://source.unsplash.com/1200x1200/?store')
#   business10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   business10.save!

#   for j in 1..4 do
#     BusinessOffer.create(
#       offer_amount: rand(100..200),
#       discount: rand(10..20),
#       price_cents: rand(50..150),
#       business: business10
#     )
#     j += 1
#   end

# puts "Businesses Created"

# puts "Orders Creation"
# for i in 1..5 do
#   order = Order.new(
#     order_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
#     exp_date: Faker::Date.forward(days: 23),
#     confirmation_no: Faker::Number.number(digits: 10), # it's a number not a text
#     paid: Faker::Boolean.boolean,
#     owner_paid: Faker::Boolean.boolean,
#     user_id: customers.sample.id,
#     total_amount_cents: rand(400..500),
#     state: "paid",
#     gift: Faker::Boolean.boolean
#     )
#   order.save!
#   for j in 1..4 do
#       OrderItem.create(
#         quantity:  rand(1..3),
#         business_offer_id: (BusinessOffer.all).sample.id,
#         order: order
#       )
#       j += 1
#   end
#   i += 1
# end
# puts "Orders Created"


require 'open-uri'
require "faker"

Business.destroy_all
BusinessOffer.destroy_all
Order.destroy_all
OrderItem.destroy_all
Category.destroy_all
User.destroy_all



puts "Users Creation"
User.create!(
  first_name: "Mahsa",
  last_name: "Khamisi",
  email: "mahsa.kh@gmail.com",
  password: "MahsaMahsa",
  owner: false,
)

User.create!(
  first_name: "Sarah",
  last_name: "Lopez",
  email: "sara@gmail.com",
  password: "SaraSara",
  owner: false,
)

User.create!(
  first_name: "Alex",
  last_name: "Salva",
  email: "alex@gmail.com",
  password: "AlexAlex",
  owner: false,
)

User.create!(
  first_name: "Panah",
  last_name: "Panahi",
  email: "Panah@gmail.com",
  password: "PanahPanah",
  owner: false,
)

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
Category.create(category_name: "Cafe & Resturaunt")
Category.create(category_name: "Gym")
Category.create(category_name: "Bookstore")
Category.create(category_name: "Beauty Salon")
Category.create(category_name: "Others")
puts "Categories Created"

# puts "Businesses Creation"
customers = User.where(owner: false)
users = User.where(owner: true)
# for i in 3..8 do
#   business = Business.new(
#     name: "User#{i}-Business",
#     website: "User#{i}-Business.com",
#     address: "User#{i}-Business@gmail.com",
#     instagram: "insta:User#{i}-Business",
#     description: "some description about User#{i}-Business",
#     category_id: (Category.all).sample.id,
#     user_id: users.sample.id
#   )
#   business.user = User.all.sample  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
#   business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
#   file = URI.open('https://source.unsplash.com/800x800/?store')
#   business.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   business.save!

#   for j in 1..4 do
#     BusinessOffer.create(
#       offer_amount: rand(100..200),
#       discount: rand(10..20),
#       price_cents: rand(50..150),
#       business: business
#     )
#     j += 1
#   end

#   i += 1
# end



  business = Business.new(
    name: "Kooroo Sushi",
    website: "kooroosushi.com",
    address: "Pilinio 7 - Milano",
    instagram: "KurooSushi",
    description: "Kooroo Sushi is a family owened business. It was opened in 1999 in Milano. The owner is Mayoumi, who Moved to Milan in 95.
    She loves to share the tradition of Japanese food with other. ",
    category_id: 1,
    employee_no: rand(3..12),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?sushi')
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

    business2 = Business.new(
    name: "Alhambra Cafe",
    website: "laboulange.com",
    address: " Via Alessandro Tadino, 17, 20124 Milano MI",
    instagram: "AlhambraCafe",
    description: "This homey locale is brimming with all the ‘good’ stuff (ie food that is cruelty-free, healthy and honestly delicious). Run by a husband-and-wife team, it offers reinterpreted dishes from their homeland Eritrea ",
    category_id: 1,
    employee_no: rand(3..12),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?cafe')
  business2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business2.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business2
    )
    j += 1
  end

    business3 = Business.new(
    name: "Ca 'Turati",
    website: "Caturati.com",
    address: "Via Filippo Turati, 40 - Milano",
    instagram: "caturati.milano",
    description: "We thought and designed this meeting place in the beating heart of Milan,
between skyscrapers, banks, newspaper offices, multinationals' directions,
as if it were an extension of our home. ",
    category_id: 1,
    employee_no: rand(3..12),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?cafe')
  business3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business3.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business3
    )
    j += 1
  end

    business4 = Business.new(
    name: "Amami Ristorante Pizzeria",
    website: "http://www.amamiristorante.com/",
    address: "Via Amerigo Vespucci, 1, 20124 Milano MI",
    instagram: "amamiristorante",
    description: "Professionalism and a lot of love! We are a close-knit working group that aims for excellence. From management, to cooking, to room service, we put experience and passion into our work.",
    category_id: 1,
    employee_no: rand(3..12),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?Pizzeria')
  business4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business4.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business4
    )
    j += 1
  end

    business5 = Business.new(
    name: "Crazy Cat Café",
    website: "crazycatcafe.com",
    address: "Via Napo Torriani, 5, Milan",
    instagram: "crazycatcafe",
    description: "The Crazy Cat Café was born from a great love, that for cats, and an unforgettable experience in a Neko Café in Osaka, Japan. In October 2015, the first and only Cat Café in Lombardy opens in Milan and wants to recreate the intimate atmosphere of Japanese neko cafés, ",
    category_id: 1,
    employee_no: rand(3..12),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?cafe')
  business5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business5.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business5
    )
    j += 1
  end

    business6 = Business.new(
    name: "Fisiodynamic",
    website: "Fisiodynamic.com",
    address: "Via Achille Maiocchi, 8, 20129 Milano MI",
    instagram: "Fisiodynamic",
    description: "At the Fisiodynamic Club, in via Maiocchi 8 in Milan (just 150 meters from the MM stop of Porta Venezia), there is everything you can wish for your efficiency, your leisure, your physical fitness.
The large, welcoming and well-equipped gyms.",
    category_id: 2,
    employee_no: rand(3..12),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?gym')
  business6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business6.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business6
    )
    j += 1
  end

    business7 = Business.new(
    name: "Plus One Gym",
    website: "www.plus1.com",
    address: " Via Friuli, 8/A/ Cortile Interno, 20135 Milano MI",
    instagram: "plus1gym",
    description: "Do they give you a nerd?
We instead reward you! If you are a university student, enrolled in Plus 1 Gym Concept, for every 30 and Praise we give you 1 month more. ",
    category_id: 2,
    employee_no: rand(3..12),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?gym')
  business7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business7.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business7
    )
    j += 1
  end

    business8 = Business.new(
    name: "Offended World",
    website: "http://www.libreriadelmondooffeso.it/",
    address: "Piazza S. Simpliciano, 7, 20121 Milan MI",
    instagram: "libreriadelmondooffeso",
    description: "Traditional book shop with slow-food eats, wine, aperitifs & coffee, plus outdoor seating. ",
    category_id: 3,
    employee_no: rand(3..12),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?bookstore')
  business8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business8.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business8
    )
    j += 1
  end


    business9 = Business.new(
    name: "Milan Women's Library",
    website: "www.libreriadelledonne.it",
    address: "Via Pietro Calvi, 29, 20129 Milan MI",
    instagram: "libreriadelledonne",
    description: "It is a living reality. It counts more than forty women among its permanent participants. In the years in which the bookshop was born, there was a need to have a place that emphasized women's thinking and writing. ",
    category_id: 3,
    employee_no: rand(3..12),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?bookstore')
  business9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business9.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business9
    )
    j += 1
  end


    business10 = Business.new(
    name: "Blow Hair Salon",
    website: "blow-hair.com",
    address: "Via Lecco, 2, 20134 Milano MI",
    instagram: "blowhair",
    description: "Blow is harmony, energy, the perfect synergy between shapes and colors, personalization and attention to detail, professionalism and innovation.
Simplicity and good taste are the basis of our style.",
    category_id: 4,
    employee_no: rand(3..12),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?store')
  business10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business10.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_centsv  v vv  : rand(50..150),
      business: business10
    )
    j += 1
  end

puts "Businesses Created"

puts "Orders Creation"
for i in 1..5 do
  order = Order.new(
    order_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
    exp_date: Faker::Date.forward(days: 23),
    confirmation_no: Faker::Number.number(digits: 10), # it's a number not a text
    paid: Faker::Boolean.boolean,
    owner_paid: Faker::Boolean.boolean,
    user_id: customers.sample.id,
    total_amount_cents: rand(400..500),
    state: "paid",
    gift: Faker::Boolean.boolean
    )
  order.save!
  for j in 1..4 do
      OrderItem.create(
        quantity:  rand(1..3),
        business_offer_id: (BusinessOffer.all).sample.id,
        order: order
      )
      j += 1
  end
  i += 1
end
puts "Orders Created"










