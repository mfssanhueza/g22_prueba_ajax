# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Claim.destroy_all
Enterprise.destroy_all
User.destroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

20.times do |i|
  e = Enterprise.new
  e.name = "Empresa#{i}"
  e.save
end

30.times do |i|
  u = User.new
  u.email = "user#{i}@mail.com"
  u.password = '1234567890'
  u.password_confirmation = '1234567890'
  u.save
end

250.times do |i|
  c = Claim.new
  c.enterprise = Enterprise.all.sample
  c.user = User.all.sample
  c.title = "Complain#{i}"
  c.content = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  c.save
end
