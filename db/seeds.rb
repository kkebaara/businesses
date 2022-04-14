# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(name:'ken', admin:true, email:'email@email.com')
u2 = User.create(name:'john', admin:true, email:'ken@ken.com')



Business.create([
{
    "name": "Dynasty Chinese Food",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjIU5rBQnvl-F5579XsHBhy1dF_O37MDhAfA&usqp=CAU",
    "description": "171 E Broadway, New York, NY 10002"
  }, {
    "name": "Noglu Restaurant & Epicerie",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvZTuhz_BI-LXtzjoG5BDHONZW8uY5tX7Acw&usqp=CAU",
    "description": "919 Fulton St, Brooklyn, NY 11238"
  }, {
    "name": "Cafe Umbria",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT0rWFOAzNbcZ0DhTDFkQpnhM6-1mDYW-U6w&usqp=CAU",
    "description": "1 E 32nd St, New York, NY 10016"
  }, {
    "name": "Central Cafe and Restaurant",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPtJ3gPPaqiJ2q0DJtRrp2-EKWEbpXDIoSqdKLV4iY9HfCu1gLBspAFPFrsKeVamaCXig&usqp=CAU",
    "description": "205 E Houston St, New York, NY 10002"
  }, {
    "name": "The Freehouse Pub",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6bxgdHEYqGEJFj6R82gwkXFiQZT2Unfl6MQ&usqp=CAU",
    "description": "261 Moore St, Brooklyn, NY 11206"
  }, {
    "name": "Joe's Real BBQ",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAu2_HC82o4SrrqtD4GCuc-MX4jFLdRRgi0g&usqp=CAU",
    "description": "454 Van Brunt St, Brooklyn, NY 11231"
   }, {
    "name": "Chunky's Burger & More",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBZmehsn7Nra3DgdEl1Zwjp7QABTcMuIhTGA&usqp=CAU",
    "description": "430 E 9th St, New York, NY 10009"
  }, {
    "name": "Peerless Grille",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz3mfjpr_4C-DQaSi7E0-J6Zak2UWaTS8Crg&usqp=CAU",
    "description": "131 Sullivan St, New York, NY 10012"
  }, {
    "name": "Nomama Ramen Bowl",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBjI7Jf8CVni1yVbEMQdrIhOM5bA-lvW1rgg&usqp=CAU",
    "description": "1209 Jackson Ave, Queens, NY 11101"
  }, {
    "name": "El Ranchito",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEwoAv3oiTxOAMT7pqKGYKw6yZdqz520__fMH4gLc74f--Hf6mE9IjSAjP7uM0s92TySo&usqp=CAU",
    "description": "5-48 49th Ave, Queens, NY 11101"
  }
])


Favorite.create({
    "business_id": Business.all.sample.id
  })