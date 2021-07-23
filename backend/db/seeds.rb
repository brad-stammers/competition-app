# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Competition.create(name: "First", sport: "Soccer", location: "Mitchelton", start: "01/01/2021", finish: "31/05/2021")
Competition.create(name: "Second", sport: "Cricket", location: "Ashgrove", start: "01/09/2021", finish: "31/04/2022")