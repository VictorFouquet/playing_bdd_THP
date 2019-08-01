# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

cities = ["Paris", "Nantes", "Rennes", "Strasbourg", "Bordeaux", "Rouen", "Lille", "Tours", "Marseille", "Reims"]
n = 0

10.times do
  city = City.create!(
    name: cities[n] 
    )
  n += 1
end

50.times do
	dogsitter = Dogsitter.create!(
		name: Faker::Name.name,
		city: City.find(rand(City.first.id..City.last.id))
		)
	dog = Dog.create!(
		name: Faker::Hipster.word,
		city: City.find(rand(City.first.id..City.last.id))
		)
end

100.times do
	stroll = Stroll.create!(
		dog: Dog.find(rand(Dog.first.id..Dog.last.id)),
		dogsitter: Dogsitter.find(rand(Dogsitter.first.id..Dogsitter.last.id)),
		city: City.find(rand(City.first.id..City.last.id))
		)
end