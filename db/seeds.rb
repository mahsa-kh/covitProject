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
#     category: Category.all.sampleCategory.all).sample.id,
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
    address: "Via Plinio 7 - Milano",
    instagram: "KurooSushi",
    description: "Kooroo Sushi is a family owened business. It was opened in 1999 in Milano. The owner is Mayoumi, who Moved to Milan in 95.
    She loves to share the tradition of Japanese food with other. ",
    employee_no: rand(3..12),
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
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
    employee_no: rand(3..12),
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
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
    name: "Ca' Turati",
    website: "Caturati.com",
    address: "Via Filippo Turati, 40 - Milano",
    instagram: "caturati.milano",
    description: "We thought and designed this meeting place in the beating heart of Milan,
between skyscrapers, banks, newspaper offices, multinationals' directions,
as if it were an extension of our home. ",
    employee_no: rand(3..12),
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
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
    employee_no: rand(3..12),
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
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
    employee_no: rand(3..12),
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
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
    employee_no: rand(3..12),
    category: Category.find_by(category_name: "Gym"),
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
    employee_no: rand(3..12),
    category: Category.find_by(category_name: "Gym"),
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
    employee_no: rand(3..12),
    category: Category.find_by(category_name: "Bookstore"),
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
    employee_no: rand(3..12),
    category: Category.find_by(category_name: "Bookstore"),
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
    employee_no: rand(3..12),
    category: Category.find_by(category_name: "Beauty Salon"),
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
      price_cents: rand(50..150),
      business: business10
    )
    j += 1
  end

  # START OF CREATION OF NEW BUSINESSES FOR FOR PRESENTATION OF FRIDAY, MAY 1

  business11 = Business.new(
    name: "L'immagine Bistrot Ristorante",
    website: "http://www.limmaginebistrot.it/",
    address: "Via Varesina, 61, 20156 Milano MI",
    instagram: "limmaginebistrot",
    description: "Chopping boards with fried dumplings and grilled meat in an intimate place with jars of candy on the tables.",
    employee_no: rand(6..20),
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?restaurant')
  business11.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business11.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business11
    )
    j += 1
  end

  business12 = Business.new(
    name: "Bar Bianco",
    website: "https://www.barbiancomilano.com/",
    address: "Viale Enrico Ibsen, 4, 20121 Milano MI",
    instagram: "barbiancomilano",
    description: "Bar with large and shaded outdoor area, free rickshaw ride and Mediterranean dishes.",
    employee_no: rand(6..14),
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?cafe')
  business12.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business12.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business12
    )
    j += 1
  end

  business13 = Business.new(
    name: "versolibri",
    website: "http://www.libreriaverso.com/",
    address: "Corso di Porta Ticinese, 40, 20123 Milano MI",
    instagram: "versolibri",
    description: "Independent bookshop (and bar) in Milan, in Corso di Porta Ticinese.",
    employee_no: rand(8..15),
    category: Category.find_by(category_name: "Bookstore"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?bookstore')
  business13.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business13.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business13
    )
    j += 1
  end

  business14 = Business.new(
    name: "Ligera Ink Tattoo Milano",
    website: "https://www.ligeraink.it/",
    address: "Via Jacopo Palma, 5, 20146 Milano MI",
    instagram: "ligera_inktattoomilano",
    description: "Collective Tattoo studio located in Milan.",
    employee_no: rand(4..10),
    category: Category.find_by(category_name: "Others"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?tattooer')
  business14.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business14.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business14
    )
    j += 1
  end

  business15 = Business.new(
    name: "WebFit Milano Turro",
    website: "http://www.webfit.it/palestre/palestra-milano",
    address: "Via Privata della Torre, 22, 20127 Milano MI",
    instagram: "palestrewebfit",
    description: "Innovative, dynamic and digital: 365/365 open, non-stop Digital Training courses, qualified instructors.",
    employee_no: rand(10..20),
    category: Category.find_by(category_name: "Gym"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?gym')
  business15.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business15.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business15
    )
    j += 1
  end

  business16 = Business.new(
    name: "Pizzium",
    website: "https://www.pizzium.com/it/",
    address: "Via Giulio Cesare Procaccini, 30, 20154 Milano MI",
    instagram: "pizzium",
    description: "The long journey of the real Neapolitan pizza combined with PDO, a pizza in constant evolution but with an identity of Neapolitan tradition.",
    employee_no: rand(10..18),
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?Pizzeria')
  business16.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business16.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business16
    )
    j += 1
  end

  business17 = Business.new(
    name: "Moscow Mule",
    website: "https://www.moscow-mule.it/",
    address: "Via Teodosio, 60, 20131 Milano MI",
    instagram: "moscowmulebar",
    description: "Cocktails and aperitifs in a popular modern venue, including essential furnishings, exposed bricks and soft lighting.",
    employee_no: rand(12..18),
    category: Category.find_by(category_name: "Others"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?pub')
  business17.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business17.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business17
    )
    j += 1
  end

  business18 = Business.new(
    name: "Extro Parrucchieri Milano",
    website: "https://www.extro.it/",
    address: "Corso Magenta, 79, 20123 Milano MI",
    instagram: "extroparrucchierimilano",
    description: "We shape emotions.",
    employee_no: rand(6..12),
    category: Category.find_by(category_name: "Beauty Salon"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?store')
  business18.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business18.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business18
    )
    j += 1
  end

  business19 = Business.new(
    name: "Virgin Active Milano Bicocca",
    website: "https://www.virginactive.it/club/milano",
    address: "Viale Sarca, 232, 20126 Milano MI",
    instagram: "virginactiveit",
    description: "Virgin Active: a new concept of well-being that involves family and friends.",
    employee_no: rand(20..30),
    category: Category.find_by(category_name: "Gym"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1200x1200/?gym')
  business19.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business19.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business19
    )
    j += 1
  end

# END OF CREATION OF NEW BUSINESSES FOR FOR PRESENTATION OF FRIDAY, MAY 1

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






