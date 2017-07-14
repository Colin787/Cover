# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding data..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end

## USERS

puts "Finding or creating Users..."

User.destroy_all

users.create!({
  first_name: '',
  last_name: '',
  email: '',
  cell: '',
  password_digest: '',
  user_type: ''
  })

## RESTAURANTS

puts "Finding or creating Restaurants..."

Restaurant.destroy_all

restaurants.create!({
  user_id: '',
  restaurant_name: '',
  street_address: '',
  city: '',
  province: '',
  postal_code: '',
  description: '',
  image: ''
  })

## WORKERS

puts "Finding or creating Workers..."

workers = Worker.create!({
  user_id: '',
  postal_code: '',
  image: ''
  })