# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Dish.destroy_all
User.destroy_all


u1 = User.create!(name: "Amandine", address: "Laurier", email: "caramandine@gmail.com", password: "password123")
p u1
u2 = User.create!(name: "Chloé", address: "Drolet", email: "sauratchloe@gmail.com", password: "password123")
u3 = User.create!(name: "Ryan", address: "Sherbrooke", email: "ryansalah0@gmail.com", password: "password123")
u4 = User.create!(name: "Charlotte", address: "Mont Royal", email: "charlottemontane@hotmail.com", password: "password123")
u5 = User.create!(name: "Philippe", address: "Beaubien", email: "philou@gmail.com", password: "password123")
u6 = User.create!(name: "Claire", address: "Parc", email: "bonjourhi@gmail.com", password: "password123")
u7 = User.create!(name: "Jay", address: "Griffintown", email: "heyjay@gmail.com", password: "password123")
u8 = User.create!(name: "Aline", address: "Mile End", email: "thumbsup@gmail.com", password: "password123")

d1 = Dish.create!(user: u1, name: "Tartiflette", description: "Cheese and potatoes", price: 8, remote_photo_url: "https://assets.afcdn.com/recipe/20160401/38946_w1024h768c1cx2690cy1793.jpg")
d2 = Dish.create!(user: u1, name: "Tarte tatin", description: "Apples and butter", price: 9, remote_photo_url: "https://www.bakefromscratch.com/wp-content/uploads/2019/02/APPLE-TARTE-TATIN_145-FINAL-Credit-Jason-Varneyfull-1-696x522.jpg")
d3 = Dish.create!(user: u3, name: "Tajine", description: "Chicken and vegetables", price: 7, remote_photo_url: "https://d1doqjmisr497k.cloudfront.net/-/media/ducrosfr-2016/recipes/800/tajine_de_poulet_au_citron_et_aux_olives_800.jpg?vd=20180616T221641Z&hash=5B383FAA3AE8A3357ADF625C3755FCA6C181FB9B")
d4 = Dish.create!(user: u4, name: "Magret de canard", description: "Delicious Duck", price: 5, remote_photo_url: "https://www.papillesetpupilles.fr/wp-content/uploads/2009/05/Magret-de-canard-%C2%A9margouillat-photo.-shutterstock.jpg")


# Booking.create!(user: u5, dish: d1)
# Booking.create!(user: u6, dish: d2)
# Booking.create!(user: u7, dish: d4)
# Booking.create!(user: u8, dish: d3)
# Booking.create!(user: u1, dish: d2)

User.all.each do |user|
  Dish.all.each { |dish| Booking.create! user: user, dish: dish}
end



puts "Seeds Completed"


