# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Faker::Config.random = Random.new(33)
# create student users
User.create(access_level: 'Student', name: 'Zaid Badiger', email: 'zaidbadiger@gmail.com', username: 'zbad23', password: 'asdfgh')
30.times do
  name = Faker::Name.name
  email = Faker::Internet.email(name: name, separators: %w[- _ .])
  username = Faker::Internet.username(specifier: name, separators: %w[- _ .])
  password = Faker::Internet.password
  User.create(access_level: 'Student', name: name, email: email, username: username, password: password)
end
# create instructor users
2.times do
  name = Faker::Name.name
  email = Faker::Internet.email(name: name, separators: %w[- _ .])
  username = Faker::Internet.username(specifier: name, separators: %w[- _ .])
  password = Faker::Internet.password
  User.create(access_level: 'Instructor', name: name, email: email, username: username, password: password)
end
# create TA users 
2.times do
  name = Faker::Name.name
  email = Faker::Internet.email(name: name, separators: %w[- _ .])
  username = Faker::Internet.username(specifier: name, separators: %w[- _ .])
  password = Faker::Internet.password
  User.create(access_level: 'TA', name: name, email: email, username: username, password: password)
end

