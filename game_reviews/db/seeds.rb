# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "🛒 Shopping for games"
g1 = Game.create(title:'Halo: Infinite', genre:'FPS', description:'Microsoft brings back Master Chief again for the same old shit...', price:'0.00')
g2 = Game.create(title:'Valorant', genre:'FPS', description:'Counter-Strike, but like, potato...with abilities. Totes. :smirk:', price:'0.00')

puts "😴 Waking up Users..."
u1 = User.create(username:'KatRoll')
u2 = User.create(username:'fucking_wutizit')
u3 = User.create(username:'Rivkah')
u4 = User.create(username:'1NJ57C3')

puts "🤬 NERDRAGE!!"
Review.create(game: g1, user: u1, review:'Whack')
Review.create(game: g2, user: u1, review:'Meh')
Review.create(game: g1, user: u2, review:'It\'s alright.')
Review.create(game: g2, user: u2, review:'That shit sucks!')
Review.create(game: g1, user: u3, review:'It\'s cool.')
Review.create(game: g2, user: u3, review:'Um.. I haven\'t ever played, so I don\'t even...')
Review.create(game: g1, user: u4, review:'ODamnSameThing')
Review.create(game: g2, user: u4, review:'WHERE IS THE SHMOOVEMENT?!')