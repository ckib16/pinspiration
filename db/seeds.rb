# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pin.destroy.all
User.destroy.all

Pin.create({
  title: "First pin",
  image_url: "http://lorempixel.com/400/200"
  })

Pin.create({
  title: "Second pin",
  image_url: "http://lorempixel.com/400/200"
  })

Pin.create({
  title: "Third pin",
  image_url: "http://lorempixel.com/400/200"
  })
