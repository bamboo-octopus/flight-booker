# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Airport.create(code: "JIA", city_state: "Jacksonville, FL" )
# Airport.create(code: "MIA" , city_state: "Miami, FL")
# Airport.create(code: "ORD" , city_state: "Chicago, IL" )
# Airport.create(code: "DEN" , city_state: "Denver, CO" )
# Airport.create(code: "JFK" , city_state: "New York, New York" )
# Airport.create(code: "IAD" , city_state: "Washington, D.C.")
# Airport.create(code: "SFO" , city_state: "San Francisco, CA" )
# Airport.create(code: "AUS" , city_state: "Austin, TX")
# Airport.create(code: "OMA" , city_state: "Omaha, NE" )
# Airport.create(code: "SEA" , city_state: "Seattle, WA")

airports = [
    ["JIA", "Jacksonville, FL"],
    ["MIA", "Miami, FL"],
    ["ORD", "Chicago, IL"],
    ["DEN", "Denver, CO"],
    ["JFK", "New York, New York"],
    ["IAD", "Washington, D.C."],
    ["SFO", "San Fransisco, CA"],
    ["AUS", "Austin, TX"],
    ["OMA", "Omaha, NE"],
    ["SEA", "Seattle, WA"]
]

    airports.each do |code, city_state|
        Airport.create(code: code, city_state: city_state)
    end