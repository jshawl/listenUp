# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Narrator.create!({name: "Stephen Frye", accent: "British", gender: "male", voices: "yes"})
Narrator.create!({name: "Laura Ingalls Wilder", accent: "American", gender: "female", voices: "no"})