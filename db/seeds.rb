# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


christa = User.create(name: "Christa Gammage", username: "christa", password: "christa")
ivan = User.create(name: "Ivan Ginsberg", username: "ivan", password: "ivan")
lola = User.create(name: "Lola Gammage", username: "lola", password: "lola")
hailey = User.create(name: "Hailey Cassidy", username: "hailey", password: "hailey")

steve = Client.create(name: "Steve Wonder", address: "123 The Best Road. New York, NY 12345")
katie = Client.create(name: "Katie Hopper", address: "100 Manhattan Avenue, New York, NY 10110")
elly = Client.create(name: "Elly Veazey", address: "109 West 109 Street, New York, NY 11223")

Invoice.create(user_id: christa, client_id: steve)
Invoice.create(user_id: ivan, client_id: elly)
Invoice.create(user_id: lola, client_id: katie)
Invoice.create(user_id: hailey, client_id: steve)