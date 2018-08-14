# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'malorie18@gmail.com', name: 'Malorie Casimir')
User.create(email: 'roniece.ricardo@flatironschool.com', name: 'Roniece Ricardo')
User.create(email: 'pablo.moreira@flatironschool.com', name: 'Pablo Moreira')
User.create(email: 'patjab@gmail.com', name: 'Patrick Abejar')

Pano.create(caption: 'cool pano!', user_id: 1)
Pano.create(caption: 'AMAZING', user_id: 2)
Pano.create(caption: 'slaaaay', user_id: 3)
Pano.create(caption: 'wish I was there', user_id: 4)
