User.destroy_all
#athletes
u1 = User.create :email => 'zohafard@gmail.com' :password => 'chicken'
u2 = User.create :email => 'erfanianbamdad@gmail.com' :password => 'chicken'

#couch
u3 = User.create :email => 'matt.hinks@icloud.com'

puts "#{ User.count } users."

Logbook.destroy_all
l1 = Logbook.create :id => 1
l2 = Logbook.create :id => 2
l3 = Logbook.create :id => 3
l4 = Logbook.create :id => 4
l5 = Logbook.create :id => 5
l6 = Logbook.create :id => 6

puts "#{ Logbook.count } logbooks."












# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


