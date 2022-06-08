require 'faker'
require 'open-uri'

puts "Cleaning up database..."
Account.delete_all

puts "Database cleaned"

puts 'Creating Users...'

file = URI.open('https://images.unsplash.com/photo-1642980074244-d2777f053f9f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NHx6X0RPZzhPeXJyb3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1642980074229-439281d19f29?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NXx6X0RPZzhPeXJyb3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
user1 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example@example.com",
  password: "password"
)
user1.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user1.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1596690097396-bb75a1d6c807?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MzN8el9ET2c4T3lycm98fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1596389662344-80f794f1ca99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MzJ8el9ET2c4T3lycm98fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
user2 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example2@example.com",
  password: "password"
)
user2.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user2.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1649168917088-2fecda4d5cc2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8OXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1649168916833-2b08c7da43ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1649168916843-47afaf9fb6cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file4 = URI.open('https://images.unsplash.com/photo-1649168916853-8bdb50116941?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
user3 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example3@example.com",
  password: "password"
)
user3.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user3.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')
user3.images.attach(io: file3, filename: 'user3.jpeg', content_type: 'image/jpg')
user3.images.attach(io: file4, filename: 'user4.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1593880223042-744ce9a4b58f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OTZ8el9ET2c4T3lycm98fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1593880223030-1f126e6c2c9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OTd8el9ET2c4T3lycm98fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1593880223058-70f9fbccf677?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OTV8el9ET2c4T3lycm98fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
user4 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example4@example.com",
  password: "password"
)
user4.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user4.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')
user4.images.attach(io: file3, filename: 'user3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1599447292180-45fd84092ef0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTh8MTUyNTE2NXx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1599447292440-c110dfece71a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTl8MTUyNTE2NXx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1599447292411-637efa33e046?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MjB8MTUyNTE2NXx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
user5 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example5@example.com",
  password: "password"
)
user5.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user5.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')
user5.images.attach(io: file3, filename: 'user3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1489980721706-f487dab89c24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MzJ8MTU5OTg1MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1489980869433-d1f7c7ac0fcf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MzN8MTU5OTg1MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1489980791458-937dcbaf1d5b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MzR8MTU5OTg1MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file4 = URI.open('https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MzV8MTU5OTg1MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
user6 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example6@example.com",
  password: "password"
)
user6.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user6.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')
user6.images.attach(io: file3, filename: 'user3.jpeg', content_type: 'image/jpg')
user6.images.attach(io: file4, filename: 'user3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1496360166961-10a51d5f367a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NDN8MTU5OTg1MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1496346776741-7297b9e34825?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NDJ8MTU5OTg1MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1496346181985-c973038ae99d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NDF8MTU5OTg1MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file4 = URI.open('https://images.unsplash.com/photo-1496345875659-11f7dd282d1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8Mzl8MTU5OTg1MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
user7 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example7@example.com",
  password: "password"
)
user7.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user7.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')
user7.images.attach(io: file3, filename: 'user3.jpeg', content_type: 'image/jpg')
user7.images.attach(io: file4, filename: 'user3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1596535769582-ae8ee239e96e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
file2 = URI.open('https://images.unsplash.com/photo-1596535879572-b542a11ae0f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
user8 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example8@example.com",
  password: "password"
)
user8.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user8.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1638109537538-a061dc879617?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NTh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1638109537079-53b5ff0082b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NTd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1638109537051-73db1b6e2600?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NTl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
user9 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example9@example.com",
  password: "password"
)
user9.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user9.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')
user9.images.attach(io: file3, filename: 'user3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1608109930107-5bc856df8b5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MjAwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1608109931246-847da90b4cec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTk4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1608109929928-bc482afa91e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTk3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
user10 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example10@example.com",
  password: "password"
)
user10.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user10.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')
user10.images.attach(io: file3, filename: 'user3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1653557036073-edc6dcee5601?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8OHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1653557055644-ecfa296ddeb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8N3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
user11 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example11@example.com",
  password: "password"
)
user11.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user11.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1631700437219-2e8772724562?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NjF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1631700437302-d8973ae56b3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NjJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
user12 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example12@example.com",
  password: "password"
)
user12.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user12.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1650397604430-c5a30508e4e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1650473841606-a701bb43d731?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1650473816083-3cc5b81963e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
user13 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example13@example.com",
  password: "password"
)
user13.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user13.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')
user13.images.attach(io: file3, filename: 'user3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1649976390492-324d0c60beed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1649976390334-7e9e54080339?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1649976389678-48bf204d813d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
user14 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example14@example.com",
  password: "password"
)
user14.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user14.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')
user14.images.attach(io: file3, filename: 'user3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1633106485824-0150b0788081?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8OTd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1633106485783-46f410be8030?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8OTl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1633106485795-306387d30cb1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTAwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
user15 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example15@example.com",
  password: "password"
)
user15.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user15.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')
user15.images.attach(io: file3, filename: 'user3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1633381521050-26bb467d9d5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8N3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1633381182794-01b10764b431?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8OHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
user16 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example16@example.com",
  password: "password"
)
user16.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user16.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1654632042103-bea38e54f0f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1654632042164-fc5a305c92e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
user17 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example17@example.com",
  password: "password"
)
user17.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user17.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1649179961072-07f772ab7a47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NTB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1649179961243-cddd51f87eb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NTF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
user18 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example18@example.com",
  password: "password"
)
user18.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user18.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1650542915072-0fe647f92a6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTM3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1650542915573-40b145d3b087?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTQwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
user19 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example19@example.com",
  password: "password"
)
user19.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user19.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1650542907675-ceb88c268cab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTYwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1650542914417-3e09bcbca7bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTU4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1650542907679-bc7752ea778d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTYyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
user20 = Account.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Team.mascot,
  email: "example20@example.com",
  password: "password"
)
user20.images.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
user20.images.attach(io: file2, filename: 'user2.jpeg', content_type: 'image/jpg')
user20.images.attach(io: file3, filename: 'user3.jpeg', content_type: 'image/jpg')
