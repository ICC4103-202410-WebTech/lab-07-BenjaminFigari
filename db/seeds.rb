# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all

user1 = User.create!(name: "John Doe", email: "john@example.com", password: "password")
user2 = User.create!(name: "Max Verstappen", email: "max@redbull.com", password: "maxito123")
user3 = User.create!(name: "Lando Norris", email: "lando@mclaren.com", password: "lando123")
user4 = User.create!(name: "Carlos Sainz", email: "carlos@ferrari.com", password: "carlitos123")
user5 = User.create!(name: "Fernando Alonso", email: "fernando@astonmartin.com", password: "nano123")

tag1 = Tag.create!(name: "Tag 1")
tag2 = Tag.create!(name: "Win")
tag3 = Tag.create!(name: "Pit Stop")
tag4 = Tag.create!(name: "Track Limits")
tag5 = Tag.create!(name: "Trophy")

post1 = user1.posts.create!(
  title: "Post 1",
  content: "John Doe secured his first win at the Monaco Grand Prix!",
  published_at: Time.zone.now,
  tags: [tag1, tag2, tag5]
)

post2 = user1.posts.create!(
  title: "Podium Finish at Silverstone",
  content: "John Doe clinched a podium finish at the Silverstone Circuit.",
  published_at: Time.zone.now,
  tags: [tag2, tag5]
)

post3 = user2.posts.create!(
  title: "Max Verstappen's Dominant Victory",
  content: "Max Verstappen displayed a dominant performance and secured victory at the Spanish Grand Prix.",
  published_at: Time.zone.now,
  tags: [tag2, tag5]
)

post4 = user3.posts.create!(
  title: "Lando Norris' Lightning Pit Stop",
  content: "Lando Norris amazed the crowd with a lightning-fast pit stop at the Italian Grand Prix.",
  published_at: Time.zone.now,
  tags: [tag3, tag5]
)

post5 = user4.posts.create!(
  title: "Carlos Sainz Exceeds Track Limits",
  content: "Carlos Sainz faced controversy after exceeding track limits at the Bahrain Grand Prix.",
  published_at: Time.zone.now,
  tags: [tag1, tag4]
)

post6 = user5.posts.create!(
  title: "Fernando Alonso's Return to Podium",
  content: "Fernando Alonso made a stunning return to the podium at the French Grand Prix.",
  published_at: Time.zone.now,
  tags: [tag2, tag5]
)

post7 = user1.posts.create!(
  title: "John Doe's Pole Position",
  content: "John Doe secures pole position at the Belgian Grand Prix.",
  published_at: Time.zone.now,
  tags: [tag3, tag2]
)

post8 = user3.posts.create!(
  title: "Victory at Silverstone Circuit",
  content: "Lando Norris wins at the Silverstone Circuit for the first time!",
  published_at: Time.zone.now,
  tags: [tag1, tag2, tag5]
)

post9 = user2.posts.create!(
  title: "Max Verstappen's Strategy Masterstroke",
  content: "Max Verstappen executes a brilliant strategy to win the Austrian Grand Prix.",
  published_at: Time.zone.now,
  tags: [tag2, tag5]
)

post10 = user3.posts.create!(
  title: "Lando Norris Battles to Podium Finish",
  content: "Lando Norris battles through tough competition to secure a podium finish at the Hungarian Grand Prix.",
  published_at: Time.zone.now,
  tags: [tag1, tag2, tag5]
)
