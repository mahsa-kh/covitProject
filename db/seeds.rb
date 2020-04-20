User.create(email: "mahsa@me.com", password: "1234mahsa", first_name: "mahsa", last_name: "khamisi", owner: false)
Category.create(category_name: 'cafe')
Business.create(name: "text", address: "milano", website: "www.ffd.com", instagram: "check", user_id: 1, category_id: 1)
BusinessOffer.create(business_id: 1, discount: 20, offer_amount: 100)
