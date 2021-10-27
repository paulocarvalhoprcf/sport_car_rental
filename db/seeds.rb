# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database'
Booking.destroy_all
Car.destroy_all

puts 'Creating 4 sport cars...'

ferrari_458 = { model: 'Ferrari 458 Italia', manufacturer: 'Ferrari', price: 1500, year: '2015', img_url: "https://source.unsplash.com/user/erondu/WBsl72esyVo"}
gt_500 = { model: 'Shelby GT500 Cobra', manufacturer: 'Ford', price: 1500, year: '2020', img_url: "https://source.unsplash.com/user/erondu/kGCvCx5qyjM"}
aventador = { model: 'Aventador LP780-4', manufacturer: 'Lamborghini' , price: 1500, year: '2021', img_url: "https://source.unsplash.com/user/erondu/iBLOPHwOHJE"}
porsche_911GT3 = { model: 'Porsche 911 GT3 Cup', manufacturer: 'Porsche', price: 1500, year: '2021', img_url: "https://source.unsplash.com/user/erondu/cQEz1B0LPFs" }

cars = [ferrari_458, gt_500, aventador, porsche_911GT3]
cars.each do |car|
  car = Car.create!(car)
  puts "Created #{car.model}"
end
puts "Finished!"
