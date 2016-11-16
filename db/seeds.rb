# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(email: "xdite@growth.school", password: "1111111", password_confirmation: "1111111")
book1 = Book.create!(title: "Trump Book 1", user: user)
book2 = Book.create!(title: "Trump Book 1", user: user)
