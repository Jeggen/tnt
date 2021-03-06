# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users =[
  [ "Santa", "santa@hotmail.com"],
  [ "Jane", "janeB@gmail.net"],
  [ "Phiona", "phiona@hyahoo.com"],
  [ "Suzan", "zuz@hotmail.com"],
  [ "Paddy", "padyD@gmail.com"],
  [ "David", "david@hotmail.net"]
]

users.each do | name, email |
   User.create( name: name, email: email )
end

user_toilets = {}
user_toilets["Santa"] = [
  [ "Regular", 5.20, "http://www.elwarditechnology.com/wp-content/uploads/2016/01/toilet.jpg", "Pretty clean" ],
  [ "Little comfort", 3.50, "http://tucsondesertpro.com/sitebuildercontent/sitebuilderpictures/webassets/Toilet_before.JPG", "Not very clean" ],
]

user_toilets["Jane"] = [
  [ "Sit and relax", 9.36, "https://media-cdn.tripadvisor.com/media/photo-s/05/d2/b9/62/country-inn-suites-by.jpg", "Very clean" ],
  [ "The Golden Throne", 13.21, "http://charliesgoldennuggets.com/wp-content/uploads/2015/06/goldt.jpg", "Extremely clean" ],
  [ "Never get up!", 15.93, "http://coolcomputersetups.com/images/037770.jpg", "Clean" ],
]

user_toilets["Phiona"] = [
  [ "Backyard", 3.70, "http://www.jcjackson.com/assets/SiteMedia/Blog_photos/backyard.jpg", "Clean" ],
  [ "Asian", 6.21, "https://upload.wikimedia.org/wikipedia/commons/4/40/Asian-style_wc.jpg", "Very clean" ],
]

user_toilets["Suzan"] = [
  [ "Diaper", 0.10, "http://www.greatsupplies.co.uk/Graphics/Product_Detail_Images/lille_diaper3.jpg", "Extremely disgusting" ],
  [ "Glass seat", 4.16, "https://s-media-cache-ak0.pinimg.com/736x/e6/26/1f/e6261f67fd4f66ff52670addf3255501.jpg", "Quite clean" ],
]

user_toilets["Paddy"] = [
  [ "Retro", 3.70, "https://lucyluhan.files.wordpress.com/2015/05/ba2afef39a9f05229aa1cf1faa7d75f8.jpg", "Clean" ],
  [ "Imperial seating", 11.82, "http://www.igestone.com/wp-content/uploads/2016/05/best-modern-bathroom-layout-with-white-bowl-ceramic-toilet-on-chocolate-brown-tile-bath-floor-and-square-white-ceramic-sink-on-brown-marble-bathroom-vanity-752x627.jpg", "Extremely clean" ],
  [ "Game of thrones", 9.64, "https://cnet1.cbsistatic.com/hub/i/r/2015/04/13/a97f635c-fef1-4ac4-9cdf-a9a906e299fd/resize/970xauto/24fb30b9d5e476b5e382e968a44f6859/gottoilet1.jpg", "Very clean" ],
]

user_toilets["David"] = [
  [ "Dont touch anything", 0.24, "https://makingupaman.files.wordpress.com/2015/06/disgusted-meme.png", "Extremely nasty" ],
  [ "Dare to sit", 3.92, "http://kulr.images.worldnow.com/images/7993134_G.jpg", "Clean" ],
]

toilet_visits = [
  ["Paddy", "Dont touch anything", 2, "It smelled bad" ],
  ["Jane", "Glass seat", 4, "Fantastic" ]
]

users.each do | name, email |
   User.create( name: name, email: email , password: 'abcd1234')
end

user_toilets.each do | user_name, toilets |
   user = User.find_by( name: user_name )

   toilets.each do | name, price, cover, cleanliness |
      Toilet.create( name:name, user: user, price: price, cover: cover, cleanliness: cleanliness )
   end
end

toilet_visits.each do | user_name, toilet_name, stars, comment |
   user = User.find_by( name: user_name )
   toilet = Toilet.find_by( name: toilet_name )
   Visit.create( toilet_id: toilet.id, user_id: user.id, stars: stars, comment: comment )
end
