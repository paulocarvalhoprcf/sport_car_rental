# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'json'
# require 'open-uri'

puts 'Cleaning database'
Booking.destroy_all
Car.destroy_all

# url = "https://private-anon-34b60c4048-carsapi1.apiary-mock.com/cars"
# car_serialized = URI.open(url).read
# car_json = JSON.parse(car_serialized)
# car_json.each do |c|
#   car = Car.create!(
#     model: c['model'],
#     manufacturer: c["make"],
#     price: c["price"]/100,
#     year: c["year"].to_s,
#     img_url: c['img_url'],
#     short_description: c['horsepower'].to_s
#   )
#   puts "Created #{car.model}"
# end
# puts "#{car_json.count} sport cars created!"

ferrari_458 = { model: 'Ferrari 458 Italia', manufacturer: 'Ferrari', price: rand(1500..5000), year: '2015', img_url: "https://source.unsplash.com/user/erondu/WBsl72esyVo", short_description: "Powered by a 4.5 L - V8  engine generating a power output of 562 hp at 9,000 rpm and 398 lb.ft of torque at 6,000 rpm" }
gt_500 = { model: 'Mustang Shelby GT500 Cobra', manufacturer: 'Ford', price: rand(1500..5000), year: '2020', img_url: "https://source.unsplash.com/user/erondu/fYGKyASSuk0", short_description: "Powered by 5.2-liter Predator aluminum-alloy V8 engine with a 2.65-liter roots-type supercharger and produces 760 hp and 625 lb⋅ft of torque." }
aventador = { model: 'Aventador LP780-4', manufacturer: 'Lamborghini' , price: rand(1500..5000), year: '2021', img_url: "https://source.unsplash.com/user/erondu/I70_S2OkWM4", short_description: "The Aventador SVJ produces a maximum output of 780 PS (574 kW; 769 hp) and the same 720 N⋅m (531 lb⋅ft) of torque. Lamborghini claims that it can accelerate from 0–100 km/h (0–62 mph) in 2.8 seconds." }
porsche_911GT3 = { model: 'Porsche 911 GT3', manufacturer: 'Porsche', price: rand(1500..5000), year: '2021', img_url: "https://source.unsplash.com/user/erondu/pjxe3p4u5aI", short_description: "992 GT3 Cup has a 4.0L naturally-aspirated flat-six boxer engine developing 503 bhp at 8,400 rpm and 347 lbf⋅ft of torque at 6,150 rpm, with a redline of 8,750 rpm." }
mercedes_amg = { model: 'Mercedes AMG GT', manufacturer: 'Mercedes', price: rand(1500..5000), year: '2015', img_url: "https://cdn.pixabay.com/photo/2017/03/27/14/56/auto-2179220_1280.jpg", short_description: "The M178 engine in this variant is tuned to an output of 720 hp at 6,700-6,900 rpm and 590 lb⋅ft of torque at 2,000-6,000 rpm." }
bmw_m4 = { model: 'BMW M4', manufacturer: 'BMW', price: rand(1500..5000), year: '2021', img_url: "https://source.unsplash.com/user/erondu/_4sWbzH5fp8", short_description: "Powered by the S55B30 engine. This 3.0-litre inline-6 engine has been built specifically for the new M4/M3. The power is rated at 425 hp." }
corvette = { model: 'Corvette C6', manufacturer: 'Chevrolet' , price: rand(1500..5000), year: '2020', img_url: "https://source.unsplash.com/user/erondu/HTa5mDfvyAU", short_description: "The 2014 Chevrolet Corvette includes an LT1 6.2 L V8 making 455 hp. It features three advanced technologies to the new LT1 V8 engine: direct injection." }
tesla = { model: 'Tesla Roadster', manufacturer: 'Tesla', price: rand(1500..5000), year: '2020', img_url: "https://source.unsplash.com/user/erondu/7_OQMgoGzDw", short_description: "Tesla stated that the torque at wheels was 10,000 N⋅m (7,400 lb⋅ft). The rear wheels are larger than the front wheels." }



cars = [ferrari_458, gt_500, aventador, porsche_911GT3, mercedes_amg, bmw_m4, corvette, tesla]
cars.each do |car|
  car = Car.create!(car)
  puts "Created #{car.model}"
end
puts "Finished!"
