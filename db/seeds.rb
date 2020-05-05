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
    employee_no: 11,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/JorKKx5rvA0/1600x900')
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
    employee_no: 7,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/qE1jxYXiwOA/1600x900')
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
    employee_no: 12,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/N_Y88TWmGwA/1600x900')
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
    employee_no: 9,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/cC0_UO1Obg4/1600x900')
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
    employee_no: 6,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/I79Pgmhmy5M/1600x900')
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
    employee_no: 7,
    category: Category.find_by(category_name: "Gym"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/R0y_bEUjiOM/1600x900')
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
    employee_no: 8,
    category: Category.find_by(category_name: "Gym"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/h4i9G-de7Po/1600x900')
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
    employee_no: 14,
    category: Category.find_by(category_name: "Bookstore"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/srTwM4rqXcU/1600x900')
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
    employee_no: 6,
    category: Category.find_by(category_name: "Bookstore"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/tv8PIPPY3rQ/1600x900')
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
    employee_no: 6,
    category: Category.find_by(category_name: "Beauty Salon"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/HEde-a_T4E8/1600x900')
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
    employee_no: 10,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/d1ngW7SNehM/1600x900')
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
    employee_no: 5,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/jCFNWopXSpQ/1600x900')
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
    employee_no: 8,
    category: Category.find_by(category_name: "Bookstore"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/Mc75C46Y49s/1600x900')
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
    employee_no: 9,
    category: Category.find_by(category_name: "Others"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/vKIc4k6dm10/1600x900')
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
    employee_no: 15,
    category: Category.find_by(category_name: "Gym"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/HHXdPG_eTIQ/1600x900')
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
    employee_no: 12,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/40OJLYVWeeM/1600x900')
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
    employee_no: 8,
    category: Category.find_by(category_name: "Others"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/b2pDjDp7VRM/1600x900')
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
    employee_no: 7,
    category: Category.find_by(category_name: "Beauty Salon"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/WXmHwPcFamo/1600x900')
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
    employee_no: 20,
    category: Category.find_by(category_name: "Gym"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/CQfNt66ttZM/1600x900')
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

# START: CREATION OF NEW BUSINESSES FOR DEMO DAY ON MAY, WEDNESDAY 6

  business20 = Business.new(
    name: "Barberino's - Classic Italian Barber",
    website: "https://www.barberinosworld.com/",
    address: "Corso Magenta, 10, 20123 Milano MI",
    instagram: "barberino_s",
    description: "Barberino's revives the refined atmosphere of a historic Italian barber shop, where time seems to stand still.",
    employee_no: 9,
    category: Category.find_by(category_name: "Beauty Salon"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/FWgYghZrVqU/1600x900')
  business20.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business20.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business20
    )
    j += 1
  end

  business21 = Business.new(
    name: "Bullfrog",
    website: "https://www.bullfrogbarbershop.com/",
    address: "Piazza Alvar Aalto, 20124 Milano MI",
    instagram: "bullfrog_barbershop",
    description: "Bullfrog is a barbershop born in Milan in 2013 with the aim of becoming a reference point for grooming enthusiasts.",
    employee_no: 9,
    category: Category.find_by(category_name: "Beauty Salon"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/IvQeAVeJULw/1600x900')
  business21.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business21.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business21
    )
    j += 1
  end

  business22 = Business.new(
    name: "QC Termemilano",
    website: "https://www.qcterme.com/it/milano/qc-termemilano",
    address: "Piazzale Medaglie D'Oro, 2, 20135 Milano MI",
    instagram: "qcterme",
    description: "Thermal baths, wellness centers and charming hotels in Italy and worldwide. Revive your body and mind through water.",
    employee_no: 13,
    category: Category.find_by(category_name: "Others"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/cU53ZFBr3lk/1600x900')
  business22.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business22.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business22
    )
    j += 1
  end

  business23 = Business.new(
    name: "Milano City Ink",
    website: "https://www.milanocityink.com/",
    address: "Viale Papiniano, 22a, 20123 Milano MI",
    instagram: "milanocityink",
    description: "Milano City Ink was born with the aim of becoming a real collective of tattoo artists; inside it, together with the resident artists, some of the strongest names on the national scene.",
    employee_no: 8,
    category: Category.find_by(category_name: "Others"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/c52yd3qXsMc/1600x900')
  business23.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business23.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business23
    )
    j += 1
  end

  business24 = Business.new(
    name: "Ambroeus Milano",
    website: "https://ambroeusmilano.it/",
    address: "Via Pastrengo, 15, 20159 Milano MI",
    instagram: "ambroeus.milano",
    description: "We are Ettore, Massimo and Giorgia and we strongly believe that good quality design/high street clothing should be re-used and recycled.",
    employee_no: 3,
    category: Category.find_by(category_name: "Others"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/Fzde_6ITjkw/1600x900')
  business24.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business24.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business24
    )
    j += 1
  end

  business25 = Business.new(
    name: "Bassline Music Shop",
    website: "http://www.bassline.it/",
    address: "Viale Piave, 6, 20129 Milano MI",
    instagram: "basslinemusicshop",
    description: "Since 2009 your point of reference for music in Milan.",
    employee_no: 4,
    category: Category.find_by(category_name: "Others"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/yvx7LSZSzeo/1600x900')
  business25.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business25.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business25
    )
    j += 1
  end

  business26 = Business.new(
    name: "The Friends Pub Milano",
    website: "https://www.thefriendspubmilano.it/",
    address: "Viale Monte Santo, 12, 20124 Milano MI",
    instagram: "thefriendspubmilano",
    description: "The Friends Pub is an authentic English pub, since 2000, in Milan.",
    employee_no: 11,
    category: Category.find_by(category_name: "Others"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/QGPmWrclELg/1600x900')
  business26.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business26.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business26
    )
    j += 1
  end

  business27 = Business.new(
    name: "Alexim Parrucchieri",
    website: "https://www.aleximparrucchieri.com/",
    address: "Via Giuseppe Mazzini, 16, 20123 Milano MI",
    instagram: "alexim_hairstylist",
    description: "Italian luxury style in the heart of Milan. The new luxury of a tailored color.",
    employee_no: 10,
    category: Category.find_by(category_name: "Beauty Salon"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/ewpTmN9pQJM/1600x900')
  business27.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business27.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business27
    )
    j += 1
  end

  business28 = Business.new(
    name: "Jean Luis David",
    website: "https://www.jeanlouisdavid.it/parrucchiere/parrucchiere-milano_s673",
    address: "Piazza Napoli, 7, 20146 Milano MI",
    instagram: "jeanlouisdavidfr",
    description: "Jean Louis David salon in Milan offers cutting techniques, colors and exclusive treatments for men and women.",
    employee_no: 9,
    category: Category.find_by(category_name: "Beauty Salon"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/SYXxlEP5KAA/1600x900')
  business28.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business28.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business28
    )
    j += 1
  end

  business29 = Business.new(
    name: "Nails Deluxe",
    website: "https://www.nailsdeluxe.it/",
    address: "Via Vitruvio, 43, 20124 Milano MI",
    instagram: "nails_deluxe_centro_estetico",
    description: "Nails center in Milan, Central Station area, specialized in gel nails reconstruction.",
    employee_no: 5,
    category: Category.find_by(category_name: "Beauty Salon"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/-5KjF_u5YzI/1600x900')
  business29.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business29.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business29
    )
    j += 1
  end

  business30 = Business.new(
    name: "Milano Cafè",
    website: "https://www.milanocafe.it/",
    address: "Via Giulio Cesare Procaccini, 37, 20154 Milano MI",
    instagram: "milanocafelounge",
    description: "Milano Cafè is one of the best known and most frequented clubs in the Sempione area.",
    employee_no: rand(8..10),
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/JFA1A6LWHGo/1600x900')
  business30.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business30.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business30
    )
    j += 1
  end

  business31 = Business.new(
    name: "Ugo Cocktail Bar",
    website: "http://www.ugobar.it/",
    address: "Via Corsico, 12, 20144 Milano MI",
    instagram: "ugococktailbar",
    description: "We mix ingredients and spirits from all over the world to create a mix between different cultures, seeking the perfect balance in flavor and taste.",
    employee_no: 6,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/cvRuCHFZZZ4/1600x900')
  business31.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business31.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business31
    )
    j += 1
  end

  business32 = Business.new(
    name: "Rufus Cocktail Bar",
    website: "http://www.rufuscocktailbar.com/",
    address: "Via Alberto da Giussano, 2, 20145 Milano MI",
    instagram: "rufuscocktailbar",
    description: "Cocktail for passion. Pursuit of Perfection. Cocktail Bar & Cocktail Catering at home.",
    employee_no: 4,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/rjSnhPy3bxI/1600x900')
  business32.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business32.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business32
    )
    j += 1
  end

  business33 = Business.new(
    name: "Kilburn - Cocktail Bar",
    website: "https://www.kilburncocktailbarmilano.it/",
    address: "Via Panfilo Castaldi, 25, 20124 Milano MI",
    instagram: "kilburn_milano",
    description: "Cocktail Bar from London to Milan. The Important is to Drink Well!",
    employee_no: 5,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/YIUawXx7xm0/1600x900')
  business33.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business33.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business33
    )
    j += 1
  end

  business34 = Business.new(
    name: "La Colubrina",
    website: "https://lacolubrina.it/",
    address: "Via Felice Casati, 5, 20124 Milano MI",
    instagram: "lacolubrina",
    description: "We host you every day 8-15 / 19.30-23.30 (closed Monday). Vegan and raw food, homemade with love!",
    employee_no: 7,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/OFJGlG3sKik/1600x900')
  business34.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business34.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business34
    )
    j += 1
  end

  business35 = Business.new(
    name: "Le Specialità",
    website: "https://www.ristorantelespecialita.it/",
    address: "Via Pietro Calvi, 29, 20129 Milano MI",
    instagram: "lespecialita",
    description: "Since 1977, Italian Pizza & cuisine.",
    employee_no: 8,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/1Qt-W4BGrgc/1600x900')
  business35.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business35.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business35
    )
    j += 1
  end

  business36 = Business.new(
    name: "Jazz Cafè Milano",
    website: "https://www.jazzcafe.it/",
    address: "Corso Sempione, 8, 20154 Milano MI",
    instagram: "jazzcafemilano",
    description: "Dine & Party experience!",
    employee_no: 12,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/dBWvUqBoOU8/1600x900')
  business36.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business36.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business36
    )
    j += 1
  end

  business37 = Business.new(
    name: "GetFit Milano",
    website: "https://www.getfit.it/",
    address: "Viale Stelvio, 65, 20159 Milano MI",
    instagram: "getfitlifestylemilano",
    description: "10 Fitness Centers in Milan. Train with us!",
    employee_no: 14,
    category: Category.find_by(category_name: "Gym"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/gJtDg6WfMlQ/1600x900')
  business37.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business37.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business37
    )
    j += 1
  end

  business38 = Business.new(
    name: "Palestra McFIT",
    website: "https://www.mcfit.com/it/",
    address: "Viale Fulvio Testi, 29, 20126 Milano MI",
    instagram: "mcfit_it",
    description: "The #1 fitness centers in Europe! #TeamMcFIT",
    employee_no: 13,
    category: Category.find_by(category_name: "Gym"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/zfPOelmDc-M/1600x900')
  business38.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business38.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business38
    )
    j += 1
  end

  business39 = Business.new(
    name: "Libreria Antigone",
    website: "https://www.libreriantigone.com/",
    address: "Via Antonio Kramer, 20, 20129 Milano MI",
    instagram: "libreria_antigone_milano",
    description: "LGBT library specialized in gender study feminism, queer art and theory.",
    employee_no: 5,
    category: Category.find_by(category_name: "Bookstore"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/InbrvPARzM4/1600x900')
  business39.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business39.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business39
    )
    j += 1
  end

  business40 = Business.new(
    name: "Bicerìn Milano",
    website: "http://www.bicerinmilano.com/",
    address: "Via Panfilo Castaldi, 24, 20124 Milano MI",
    instagram: "bicerinmilano",
    description: "Wine is beauty, aesthetic moment, sharing, history and culture.",
    employee_no: 6,
    category: Category.find_by(category_name: "Cafe & Resturaunt"),
    user_id: users.sample.id
  )
  # business.user = users.sample.id  # It's the same that writing business_offer_id: (BusinessOffer.all).sample.id,
  # business.category = Category.all.sample # business_offer_id: (BusinessOffer.all).sample.id,
  file = URI.open('https://source.unsplash.com/p6UBKhlryRE/1600x900')
  business40.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  business40.save!

  for j in 1..4 do
    BusinessOffer.create(
      offer_amount: rand(100..200),
      discount: rand(10..20),
      price_cents: rand(50..150),
      business: business40
    )
    j += 1
  end
  # END: CREATION OF NEW BUSINESSES FOR DEMO DAY ON MAY, WEDNESDAY 6

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






