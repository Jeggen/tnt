User.create({ name: "Santa", email: "santa@hotmail.com", password: "reindeer"})

Toilet.create({ name: "Regular", price: "5.20", cleanliness: "Pretty clean", user:references})
Toilet.create({ name: "Little comfort", price: "3.50", cleanliness: "Not very clean", user:references})
Toilet.create({ name: "Sit and relax", price: "9.36", cleanliness: "Very clean", user:references})
Toilet.create({ name: "The Golden Throne", price: "13.21", cleanliness: "Extremely clean", user:references})
Toilet.create({ name: "Hold your breath", price: "1.93", cleanliness: "Dirty", user:references})


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
