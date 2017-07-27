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


## USERTYPES

puts "Usertypes"

Usertype.destroy_all

tr = Usertype.find_or_create_by! name: 'restaurant'

tw = Usertype.find_or_create_by! name: 'worker'


## USERS

puts "Users"

User.destroy_all

tr.users.create!({
                     email: 'thespice1@hotmail.com',
                     password_digest: '1234',
                     cell: '5044054545',
                     first_name: 'Sean',
                     last_name: 'Spicer',
                     restaurant_name: 'Hawksworth Restaurant',
                     street_address: '801 West Georgia Street',
                     city: 'Vancouver',
                     province: 'BC',
                     postal_code: 'V6C 1P7',
                     description: 'Inventive Pacific Northwest cuisine & extensive wine list served in the Rosewood Hotel Georgia.',
                     image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL-A8kRLKY_AxISxj6diUGNrwlLO61o4XwoVXi7ponKr83Xhbe7A',
                 })

tr.users.create!({
                     email: 'thespice2@hotmail.com',
                     password_digest: '1234',
                     cell: '5044054545',
                     first_name: 'Sean',
                     last_name: 'Spicer',
                     restaurant_name: 'Meat & Bread',
                     street_address: '370 Cambie Street',
                     city: 'Vancouver',
                     province: 'BC',
                     postal_code: 'V6B 1H7',
                     description: 'We make sandwiches that are high quality, of good value, and prepared with skill as well as heart. The essence of our food simple, fast, delicious is the foundation of Meat & Bread.',
                     image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdtrR8w6mYA9934vUiFgQZwJjRRxICExwmEkpdR-Qb82Smh5Ex',
                 })

tr.users.create!({
                     email: 'thespice3@hotmail.com',
                     password_digest: '1234',
                     cell: '5044054545',
                     first_name: 'Sean',
                     last_name: 'Spicer',
                     restaurant_name: 'Bestie',
                     street_address: '105 E Pender Street',
                     city: 'Vancouver',
                     province: 'BC',
                     postal_code: 'V6A 1T5',
                     description: 'German-inspired eatery serving sausages, currywurst, pretzels, beer & wine in cool environs.',
                     image: 'https://vanfoodies.files.wordpress.com/2014/02/img_20140207_185734.jpg',
                 })

tw.users.create!({
                     email: 'thespice4@hotmail.com',
                     password_digest: '1234',
                     cell: '5044054545',
                     first_name: 'Sean',
                     last_name: 'Spicer',
                     restaurant_name: '',
                     street_address: '',
                     city: '',
                     province: '',
                     postal_code: 'V2P 2M1',
                     description: '',
                     image: 'app/assets/images/spicer2.jpg',
                 })


## JOBTYPES

puts "Jobtypes"

Jobtype.destroy_all

Jobtype.find_or_create_by! name: 'dishwasher'

Jobtype.find_or_create_by! name: 'prep cook'

Jobtype.find_or_create_by! name: 'line chef'

Jobtype.find_or_create_by! name: 'sous chef'

Jobtype.find_or_create_by! name: 'busser'

Jobtype.find_or_create_by! name: 'server'

Jobtype.find_or_create_by! name: 'bartender'

Jobtype.find_or_create_by! name: 'host'

Jobtype.find_or_create_by! name: 'cashier'


## JOBS

puts "Jobs"

Job.destroy_all

Job.find_or_create_by!({
                           start_time: '2017-07-27 12:00:00',
                           end_time: '2017-07-22 20:00:00',
                           rate: '2000',
                           description: 'This will be a very busy shift so tips should be good!',
                           status: 'open',
                           jobtype_id: '6',
                           user_id: '3',
                       })

Job.find_or_create_by!({
                           start_time: '2017-07-28 06:00:00',
                           end_time: '2017-07-28 12:00:00',
                           rate: '1400',
                           description: 'Breakfast rush. Please wear black pants and a white top.',
                           status: 'open',
                           jobtype_id: '8',
                           user_id: '1',
                       })

Job.find_or_create_by!({
                           start_time: '2017-07-27 18:00:00',
                           end_time: '2017-07-27 23:30:00',
                           rate: '1800',
                           description: 'We are looking for an experienced busboy. Two years of experience at minimum please!',
                           status: 'open',
                           jobtype_id: '5',
                           user_id: '1',
                       })

Job.find_or_create_by!({
                           start_time: '2017-07-27 10:00:00',
                           end_time: '2017-07-27 16:00:00',
                           rate: '2400',
                           description: 'We really need a line chef capable of keeping up with a fast-paced restaurant.',
                           status: 'open',
                           jobtype_id: '2',
                           user_id: '2',
                       })


## EXPERIENCES

## APPLICATIONS

## REVIEWS

## COMMENTS

puts "Finis"