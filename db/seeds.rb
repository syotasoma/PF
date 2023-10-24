# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email:"z@z",
  password: "zzzzzz"
  )
Genre.create!(genre_name:"腕")
Genre.create!(genre_name:"背中")
Genre.create!(genre_name:"足")
Genre.create!(genre_name:"お尻")
Genre.create!(genre_name:"おなか")
Genre.create!(genre_name:"首・肩")
Genre.create!(genre_name:"胸")