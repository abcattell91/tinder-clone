require 'faker'
require "open-uri"

puts "Cleaning up database..."
Account.delete_all

puts "Database cleaned"

puts 'Creating Users...'

user1 = Account.create (first_name: "",
                        last_name: "try",
                        username: "andtry",
                        email: "example@example.com",
                        password: "password"
                      )

puts 'Creating Boats...'

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')


boat1 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat1.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat1.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat1.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')
