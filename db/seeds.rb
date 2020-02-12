# db/seeds.rb

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '5', category: 'italian' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St', phone_number: '5654', category: 'french' }
street_food = { name: 'Pho', address: 'bkk', phone_number: '5345', category: 'chinese' }
pittaya = { name: 'Pittaya', address: '14 rue icare', phone_number: '2225', category: 'japanese' }
thaiwien = { name: 'Thai Wien', address: 'Paris 13', phone_number: '555', category: 'belgian' }

[dishoom, pizza_east, street_food, pittaya, thaiwien].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
