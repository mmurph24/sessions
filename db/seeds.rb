# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


c1 = Client.create(first_name: "Michael", last_name: "Murphy", email: "michael.murphy@gmail.com", phone: "616-324-6314", injuries: "Tight IT band", notes: "Adorable", image: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAkKAAAAJDE0Y2M1ZDJiLWUzN2EtNDk4YS1iNzkxLWU2NjI5ZjQ4NDgzOA.jpg")
Session.create(date: "October 10, 2017", location: "Kinected", price: "$150", notes: "Client was grumpy and we got off to a rough start.", client_id: c1.id)
Session.create(date: "October 17, 2017", location: "Elevate", price: "$150", notes: "Better this time! He seems more interested in upper back and shoulder work.", client_id: c1.id)
Session.create(date: "November 5, 2017", location: "Kinected", price: "$150", notes: "Focused more on body work.", client_id: c1.id)

c2 = Client.create(first_name: "Ellyn", last_name: "Sjoquist", email: "ems@gmail.com", phone: "628-914-1480", injuries: "None right now", notes: ":thumbs_up:", image: "https://pbs.twimg.com/profile_images/378800000144939860/dc04de16f969c2bb756e46c008250538_400x400.jpeg")
Session.create(date: "October 10, 2017", location: "Kinected", price: "$150", notes: "Client was grumpy and we got off to a rough start.", client_id: c2.id)
Session.create(date: "October 17, 2017", location: "Elevate", price: "$150", notes: "Better this time! He seems more interested in upper back and shoulder work.", client_id: c2.id)
Session.create(date: "November 5, 2017", location: "Kinected", price: "$150", notes: "Focused more on body work.", client_id: c2.id)
