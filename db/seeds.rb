# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(username:"charl", password_digest:"charl")

s1 = Song.create(title:"Head Like A Hole", artist:"Nine Inch Nails", video_url:"https://www.youtube.com/watch?v=ao-Sahfy7Hg", thumbnail:"http://cdn.shopify.com/s/files/1/0223/4339/products/image_2027883_e590c9d5-a6ac-4c7f-9e57-cd7f06a8549a_grande.jpeg?v=1452611643")
s2 = Song.create(title:"Sin", artist:"Nine Inch Nails", video_url:"https://www.youtube.com/watch?v=fEWdjtMmqGo", thumbnail:"https://img.discogs.com/Fetrpn71B6xPaxwSnAtVC826evI=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-135582-1434642867-8347.jpeg.jpg")

us1 = UserSong.create(user:u1, song:s1)
us2 = UserSong.create(user:u1, song:s2)
