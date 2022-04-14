# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p1 = Production.create(title: 'Hamlet', genre: 'drama', director:'Bill Shakespeare', description:'The Tragedy of Hamlet, Prince of Denmark', budget: 100000.00, image:'https://upload.wikimedia.org/wikipedia/commons/6/6a/Edwin_Booth_Hamlet_1870.jpg', ongoing:true)
p2 = Production.create(title: 'cats', genre: 'musical', director:'Andrew Lloyd Webber', description:' Jellicles cats sing and dance', budget: 200000.00, image:'https://upload.wikimedia.org/wikipedia/en/3/3e/CatsMusicalLogo.jpg', ongoing:true)


u1 = User.create(name:'ix', email:'email@email.com')
u2 = User.create(name:'rose', email:'rose@cutecats.com')


Ticket.create(user:u1, production:p2, price:65.00)
Ticket.create(user:u2, production:p2, price:65.00)
Ticket.create(user:u2, production:p1, price:65.00)


Favorite.create({
    # "name": "Dynasty Chinese Food",
    # "photograph": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjIU5rBQnvl-F5579XsHBhy1dF_O37MDhAfA&usqp=CAU",
    # "address": "171 E Broadway, New York, NY 10002"
    "restaurant_id": Restaurant.all.sample.id
  })


  User.create([
  {
    "email": "Bob@hotmail.com",
    "password": "cats1"
  },
  {
    "email": "Jill@aol.com",
    "password": "dog1"
  }
])

Restaurant.create([
{
    "name": "Dynasty Chinese Food",
    "photograph": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjIU5rBQnvl-F5579XsHBhy1dF_O37MDhAfA&usqp=CAU",
    "address": "171 E Broadway, New York, NY 10002"
  }, {
    "name": "Noglu Restaurant & Epicerie",
    "photograph": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvZTuhz_BI-LXtzjoG5BDHONZW8uY5tX7Acw&usqp=CAU",
    "address": "919 Fulton St, Brooklyn, NY 11238"
  }, {
    "name": "Cafe Umbria",
    "photograph": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT0rWFOAzNbcZ0DhTDFkQpnhM6-1mDYW-U6w&usqp=CAU",
    "address": "1 E 32nd St, New York, NY 10016"
  }, {
    "name": "Central Cafe and Restaurant",
    "photograph": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPtJ3gPPaqiJ2q0DJtRrp2-EKWEbpXDIoSqdKLV4iY9HfCu1gLBspAFPFrsKeVamaCXig&usqp=CAU",
    "address": "205 E Houston St, New York, NY 10002"
  }, {
    "name": "The Freehouse Pub",
    "photograph": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6bxgdHEYqGEJFj6R82gwkXFiQZT2Unfl6MQ&usqp=CAU",
    "address": "261 Moore St, Brooklyn, NY 11206"
  }, {
    "name": "Joe's Real BBQ",
    "photograph": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAu2_HC82o4SrrqtD4GCuc-MX4jFLdRRgi0g&usqp=CAU",
    "address": "454 Van Brunt St, Brooklyn, NY 11231"
   }, {
    "name": "Chunky's Burger & More",
    "photograph": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBZmehsn7Nra3DgdEl1Zwjp7QABTcMuIhTGA&usqp=CAU",
    "address": "430 E 9th St, New York, NY 10009"
  }, {
    "name": "Peerless Grille",
    "photograph": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz3mfjpr_4C-DQaSi7E0-J6Zak2UWaTS8Crg&usqp=CAU",
    "address": "131 Sullivan St, New York, NY 10012"
  }, {
    "name": "Nomama Ramen Bowl",
    "photograph": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBjI7Jf8CVni1yVbEMQdrIhOM5bA-lvW1rgg&usqp=CAU",
    "address": "1209 Jackson Ave, Queens, NY 11101"
  }, {
    "name": "El Ranchito",
    "photograph": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEwoAv3oiTxOAMT7pqKGYKw6yZdqz520__fMH4gLc74f--Hf6mE9IjSAjP7uM0s92TySo&usqp=CAU",
    "address": "5-48 49th Ave, Queens, NY 11101"
  }
])

Review.create ([
    {
      "comment": "Mission Chinese Food has grown up from its scrappy Orchard Street days into a big, two story restaurant equipped with a pizza oven, a prime rib cart, and a much broader menu. Yes, it still has all the hits — the kung pao pastrami, the thrice cooked bacon —but chef/proprietor Danny Bowien and executive chef Angela Dimayuga have also added a raw bar, two generous family-style set menus, and showstoppers like duck baked in clay. And you can still get a lot of food without breaking the bank.",
      "restaurant_id": Restaurant.all.sample.id,
    },
    {
      "comment": "This place is a blast. Must orders: GREEN TEA NOODS, sounds gross (to me at least) but these were incredible!, Kung pao pastrami (but you already knew that), beef tartare was a fun appetizer that we decided to try, the spicy ma po tofu SUPER spicy but delicous, egg rolls and scallion pancake i could have passed on... I wish we would have gone with a larger group, so much more I would have liked to try!",
      "restaurant_id": Restaurant.all.sample.id,
      },
    {
      "comment": "I was VERY excited to come here after seeing and hearing so many good things about this place. Having read much, I knew going into it that it was not going to be authentic Chinese. The place was edgy, had a punk rock throwback attitude, and generally delivered the desired atmosphere. Things went downhill from there though. The food was okay at best and the best qualities were easily overshadowed by what I believe to be poor decisions by the kitchen staff.",
      "restaurant_id": Restaurant.all.sample.id,
    }
  ]
)

Favorite.create({
    # "name": "Dynasty Chinese Food",
    # "photograph": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjIU5rBQnvl-F5579XsHBhy1dF_O37MDhAfA&usqp=CAU",
    # "address": "171 E Broadway, New York, NY 10002"
    "restaurant_id": Restaurant.all.sample.id
  })