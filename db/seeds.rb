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

ferrari_458 = { model: 'Ferrari 458 Italia', manufacturer: 'Ferrari', price: rand(1500..5000), year: '2015', img_url: "https://source.unsplash.com/user/erondu/WBsl72esyVo"}
gt_500 = { model: 'Shelby GT500 Cobra', manufacturer: 'Ford', price: rand(1500..5000), year: '2020', img_url: "https://source.unsplash.com/user/erondu/fYGKyASSuk0"}
aventador = { model: 'Aventador LP780-4', manufacturer: 'Lamborghini' , price: rand(1500..5000), year: '2021', img_url: "https://source.unsplash.com/user/erondu/I70_S2OkWM4"}
porsche_911GT3 = { model: 'Porsche 911 GT3 Cup', manufacturer: 'Porsche', price: rand(1500..5000), year: '2021', img_url: "https://source.unsplash.com/user/erondu/pjxe3p4u5aI" }
mercedes_amg = { model: 'Mercedes Amg GT', manufacturer: 'Mercedes', price: rand(1500..5000), year: '2015', img_url: "https://cdn.pixabay.com/photo/2017/03/27/14/56/auto-2179220_1280.jpg"}
bmw_m4 = { model: 'BMW M4', manufacturer: 'BMW', price: rand(1500..5000), year: '2021', img_url: "https://source.unsplash.com/user/erondu/_4sWbzH5fp8"}
corvette = { model: 'Corvette Stingray', manufacturer: 'Chevrolet' , price: rand(1500..5000), year: '2020', img_url: "https://source.unsplash.com/user/erondu/HTa5mDfvyAU"}
tesla = { model: 'Tesla Roadster', manufacturer: 'Tesla', price: rand(1500..5000), year: '2020', img_url: "https://source.unsplash.com/user/erondu/7_OQMgoGzDw" }



cars = [ferrari_458, gt_500, aventador, porsche_911GT3, mercedes_amg, bmw_m4, corvette, tesla]
cars.each do |car|
  car = Car.create!(car)
  puts "Created #{car.model}"
end
puts "Finished!"
