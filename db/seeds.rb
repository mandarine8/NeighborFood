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


u1 = User.create!(name: "Amandine", ratings: 4, address: "2150 Avenue Laurier Est, Montreal", email: "caramandine@gmail.com", password: "password123", photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/rdw8huo8s0zfs5wvdzcl.jpg")
u2 = User.create!(name: "Chloé", ratings: 4, address: "5395 Rue Drolet, Montreal", email: "sauratchloe@gmail.com", password: "password123", photo_url: "https://avatars1.githubusercontent.com/u/55254804?v=4")
u3 = User.create!(name: "Ryan", ratings: 4, address: "245 Rue Sherbrooke Ouest, Montreal", email: "ryansalah0@gmail.com", password: "password123", photo_url: "https://media.licdn.com/dms/image/C5603AQGjh9zf54-xQA/profile-displayphoto-shrink_100_100/0?e=1579737600&v=beta&t=cq63vIyjXk8wXMWu_HftNoGS1W3MrLiPD9-yjh4ub9s")
u4 = User.create!(name: "Charlotte", ratings: 4, address: "1374, Avenue du Mont-Royal Est, Montreal", email: "charlottemontane@hotmail.com", password: "password123", photo_url: "https://avatars1.githubusercontent.com/u/55248679?v=4")
u5 = User.create!(name: "Philippe", ratings: 1, address: "4477 Rue Beaubien Est, Montreal", email: "philou@gmail.com", password: "password123", photo_url: "https://avatars0.githubusercontent.com/u/52076767?v=4")
u6 = User.create!(name: "Claire", ratings: 5, address: "5588 Avenue du Parc, Montreal", email: "bonjourhi@gmail.com", password: "password123", photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/zfsshbf41hbf2fjstem5.jpg")
u7 = User.create!(name: "Jay", ratings: 3, address: "1708 Rue Notre Dame Ouest, Montreal", email: "heyjay@gmail.com", password: "password123", photo_url: "https://ca.slack-edge.com/T02NE0241-UNRHXU7DG-bce462e861d2-512")
u8 = User.create!(name: "Aline", ratings: 5, address: "5333 Avenue Casgrain, Montreal", email: "thumbsup@gmail.com", password: "password123", photo_url: "https://ca.slack-edge.com/T02NE0241-UCC9WMF43-afc4e292af50-512")


d1 = Dish.create!(user: u1, name: "Tartiflette", description: "Cheese and potatoes", price: 8, remote_photo_url: "https://assets.afcdn.com/recipe/20160401/38946_w1024h768c1cx2690cy1793.jpg")
d2 = Dish.create!(user: u2, name: "Tarte tatin", description: "Apples and butter", price: 5, remote_photo_url: "https://www.bakefromscratch.com/wp-content/uploads/2019/02/APPLE-TARTE-TATIN_145-FINAL-Credit-Jason-Varneyfull-1-696x522.jpg")
d3 = Dish.create!(user: u3, name: "Tajine", description: "Chicken and vegetables", price: 7, remote_photo_url: "https://d1doqjmisr497k.cloudfront.net/-/media/ducrosfr-2016/recipes/800/tajine_de_poulet_au_citron_et_aux_olives_800.jpg?vd=20180616T221641Z&hash=5B383FAA3AE8A3357ADF625C3755FCA6C181FB9B")
d4 = Dish.create!(user: u4, name: "Magret de canard", description: "Delicious Duck", price: 9, remote_photo_url: "https://www.papillesetpupilles.fr/wp-content/uploads/2009/05/Magret-de-canard-%C2%A9margouillat-photo.-shutterstock.jpg")
d5 = Dish.create!(user: u5, name: "Bouillabaisse", description: "Fish stout", price: 8, remote_photo_url: "https://alsace.nouvellesgastronomiques.com/photo/art/default/4902266-7314584.jpg?v=1352706659")
d6 = Dish.create!(user: u6, name: "Ratatouille", description: "Caramelized vegetables", price: 7, remote_photo_url: "https://s3-ca-central-1.amazonaws.com/toki-kpourkatrine/app/uploads/2018/11/05171927/Ratatouille-au-poulet-one-pot-070-466x466.jpg")
d7 = Dish.create!(user: u7, name: "Cheesecake", description: "Raspberry sauce", price: 5, remote_photo_url: "https://www.bakedbyanintrovert.com/wp-content/uploads/2018/05/Strawberry-Cheesecake-Recipe-Image-735x735.jpg")
d8 = Dish.create!(user: u8, name: "Lasagna", description: "Spinach & gorgonzola", price: 5, remote_photo_url: "http://assets.kraftfoods.com/recipe_images/opendeploy/88327-e5ff7f4500adac20f21c3beec343a2fa1016ac79_642x428.jpg")

# Booking.create!(user: u5, dish: d1)
# Booking.create!(user: u6, dish: d2)
# Booking.create!(user: u7, dish: d4)
# Booking.create!(user: u8, dish: d3)
# Booking.create!(user: u1, dish: d2)

User.all.each do |user|
  Dish.all.each { |dish| Booking.create! user: user, dish: dish}
end



puts "Seeds Completed"


