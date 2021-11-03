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

ferrari_458 = { model: 'Ferrari 458 Italia', manufacturer: 'Ferrari', price: rand(1500..5000), year: '2015', img_url: "https://source.unsplash.com/user/erondu/WBsl72esyVo", short_description: "The 458 is powered by a 4,497 cc (4.5 L; 274.4 cu in) engine of the Ferrari/Maserati F136 V8 family, generating a power output of 570 PS (419 kW; 562 hp) at 9,000 rpm (redline) and 540 N⋅m (398 lb⋅ft) of torque at 6,000 rpm with 80% torque available at 3,250 rpm. The engine features direct fuel injection, which is a first for Ferrari mid-engine setups in its road cars." }
gt_500 = { model: 'Mustang Shelby GT500 Cobra', manufacturer: 'Ford', price: rand(1500..5000), year: '2020', img_url: "https://source.unsplash.com/user/erondu/fYGKyASSuk0", short_description: "The 2020 GT500 was unveiled at the January 2019 North American International Auto Show in Detroit. It is powered by a hand-built 5.2-liter Predator aluminum-alloy V8 engine with a 2.65-liter roots-type supercharger. The Shelby GT500 produces 760 hp (567 kW; 771 PS) and 625 lb⋅ft (847 N⋅m) of torque." }
aventador = { model: 'Aventador LP780-4', manufacturer: 'Lamborghini' , price: rand(1500..5000), year: '2021', img_url: "https://source.unsplash.com/user/erondu/I70_S2OkWM4", short_description: "The last variant of the Aventador was announced at the premiere on Lamborghini's social channels in July 2021. It is limited to 600 units (350 for the Coupé, 250 for the Roadster). It has all the standard features of the Aventador S and SVJ. It produces a maximum output of 780 PS (574 kW; 769 hp) and the same 720 N⋅m (531 lb⋅ft) of torque as the Aventador SVJ. Lamborghini claims that it can accelerate from 0–100 km/h (0–62 mph) in 2.8 seconds. The top speed is claimed to be 356 km/h (221 mph). The Coupé has a claimed kerb weight of 1,550 kg (3,417 lb)." }
porsche_911GT3 = { model: 'Porsche 911 GT3', manufacturer: 'Porsche', price: rand(1500..5000), year: '2021', img_url: "https://source.unsplash.com/user/erondu/pjxe3p4u5aI", short_description: "Unveiled on 12 December 2020, the 992 GT3 Cup has a 4.0L naturally-aspirated flat-six boxer engine developing 375 kW (510 PS; 503 bhp) at 8,400 rpm and 470 N⋅m (347 lbf⋅ft) of torque at 6,150 rpm, with a redline of 8,750 rpm. The body is made up of 70% aluminium and 30% steel allowing to keep the weight down to around 1,260 kg. Inside the car, there are new racing seats, a new carbon steering wheel and a new 10.3in screen for data and diagnostics." }
mercedes_amg = { model: 'Mercedes AMG GT', manufacturer: 'Mercedes', price: rand(1500..5000), year: '2015', img_url: "https://cdn.pixabay.com/photo/2017/03/27/14/56/auto-2179220_1280.jpg", short_description: "The GT Black Series is a high-performance variant of the Mercedes-AMG GT and was officially revealed on Mercedes-AMG's YouTube channel on 9 July 2020. The M178 engine in this variant is tuned to an output of 537 kW (730 PS; 720 hp) at 6,700-6,900 rpm and 800 N⋅m (590 lb⋅ft) of torque at 2,000-6,000 rpm." }
bmw_m4 = { model: 'BMW M4', manufacturer: 'BMW', price: rand(1500..5000), year: '2021', img_url: "https://source.unsplash.com/user/erondu/_4sWbzH5fp8", short_description: "It is powered by the S55B30 engine, which is developed and engineered by BMW M GmbH. This 3.0-litre inline-6 engine has been built specifically for the new M4/M3, having a redline of 7,600 rpm with the rev limiter actuated at 7,300 rpm. The engine uses two mono-scroll turbochargers with a peak boost pressure of 18.1 psi (1.2 bar). The power is rated at 317 kW (431 PS; 425 hp), however this is achieved not at a specific engine speed, but is instead rated throughout the range of 5,500–7,300 rpm." }
corvette = { model: 'Corvette C6', manufacturer: 'Chevrolet' , price: rand(1500..5000), year: '2020', img_url: "https://source.unsplash.com/user/erondu/HTa5mDfvyAU", short_description: "The 2014 Chevrolet Corvette includes an LT1 6.2 L V8 (376 cu in) making 455 bhp (339 kW) or 460 bhp (340 kW) with the optional performance exhaust. The LT1 engine is in the Gen V family of small block engines, which will be used in GM vehicles as the new small V8 option. It features three advanced technologies to the new LT1 V8 engine: direct injection, variable valve timing, and an active fuel management system." }
tesla = { model: 'Tesla Roadster', manufacturer: 'Tesla', price: rand(1500..5000), year: '2020', img_url: "https://source.unsplash.com/user/erondu/7_OQMgoGzDw", short_description: "The Roadster has three electric motors, one in front and two at the rear,[18] allowing for all-wheel drive, and torque vectoring during cornering. Tesla said that the vehicle had a 200 kWh battery, twice the capacity of the largest battery in an existing Tesla car. Tesla has said that the Roadster will have a 1,000 km (620 miles) range on a single charge at highway speeds. Tesla stated that the torque at wheels was 10,000 N⋅m (7,400 lb⋅ft). The rear wheels are larger than the front wheels." }



cars = [ferrari_458, gt_500, aventador, porsche_911GT3, mercedes_amg, bmw_m4, corvette, tesla]
cars.each do |car|
  car = Car.create!(car)
  puts "Created #{car.model}"
end
puts "Finished!"
