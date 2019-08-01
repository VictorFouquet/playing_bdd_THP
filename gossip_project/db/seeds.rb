# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
Tag.destroy_all
User.destroy_all
Gossip.destroy_all
GossipTag.destroy_all

10.times do
	city = City.create!(
		name: Faker::Nation.capital_city,
		zip_code: Faker::Number.number(digits: 5).to_s
		)
  tag = Tag.create!(
    title: "#" + Faker::Hipster.word
  )
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::GreekPhilosophers.quote,
    email: Faker::Internet.email,
    age: rand(7..77),
    city: City.find(rand(City.first.id..City.last.id))
  )
end



20.times do
  gossip = Gossip.create!(
    title: Faker::Quote.singular_siegler,
    content: Faker::Quote.most_interesting_man_in_the_world,
    user: User.find(rand(User.first.id..User.last.id))
  )

end

n = Gossip.first.id
20.times do
  gossip_tag = GossipTag.create!(
    gossip: Gossip.find(n),
    tag: Tag.find(rand(Tag.first.id..Tag.last.id))
  )
  n += 1
end

10.times do
  gossip_tag = GossipTag.create!(
    gossip: Gossip.find(rand(Gossip.first.id..Gossip.last.id)),
    tag: Tag.find(rand(Tag.first.id..Tag.last.id))
    )
end
