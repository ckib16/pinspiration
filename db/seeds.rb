# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Board.destroy_all
Pin.destroy_all

user = User.new(
      :email                 => "test@test.com",
      :password              => "12345678",
      :password_confirmation => "12345678"
  )
user.save!

Board.create({
  title: "First Board",
  user_id: 1
  })

Pin.create({
  title: "First pin",
  image_url: "http://lorempixel.com/400/200/abstract/1",
  board_id: 1
  })

Pin.create({
  title: "Second pin",
  image_url: "http://lorempixel.com/400/200/abstract/2",
  board_id: 1
  })

Pin.create({
  title: "Third pin",
  image_url: "http://lorempixel.com/400/200/abstract/3",
  board_id: 1
  })

Board.create({
  title: "Second Board",
  user_id: 1
  })

Pin.create({
  title: "First pin",
  image_url: "http://lorempixel.com/400/200/abstract/4",
  board_id: 2
  })

Pin.create({
  title: "Second pin",
  image_url: "http://lorempixel.com/400/200/abstract/5",
  board_id: 2
  })

Pin.create({
  title: "Third pin",
  image_url: "http://lorempixel.com/400/200/abstract/6",
  board_id: 2
  })
