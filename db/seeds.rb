# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user_admin = User.create({ username: "Admin", email: "Admin", password: "password", password_confirmation: "password", admin: true })
buyer = User.create({ username: "Buyer", email: "Buyer", password: "Buyer", password_confirmation: "Buyer", admin: false })
seller = User.create({ username: "Seller", email: "Seller", password: "Seller", password_confirmation: "Seller", admin: false })
