

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
    ["JFK", "New York, NY"]    

]

flights = [
    [141, 142, "2022-04-20 12:00:00", 5400, "4:00 pm"],
    [141, 142, "2022-04-20 12:00:00", 5400, "2:34 pm"],
    [141, 143, "2022-05-15 12:00:00", 10800, "1:00 pm"],
    [141, 143, "2022-05-15 12:00:00", 10800, "8:00 am"],
    [141, 144, "2022-07-11 12:00:00", 12000, "8:00 pm"],
    [141, 144, "2022-07-11 12:00:00", 12000, "12:00 pm"],
    [141, 145, "2022-08-02 12:00:00", 6000, "3:00 am"],    
    [141, 145, "2022-08-02 12:00:00", 6000, "6:00 pm"]

]

    # airports.each do |code, city_state|
    #     Airport.create(code: code, city_state: city_state)
    # end

    flights.each do |departure_airport_id, arrival_airport_id, flight_departure_date, flight_duration, departure_time|
        Flight.create(departure_airport_id: departure_airport_id, arrival_airport_id: arrival_airport_id,
        flight_departure_date: flight_departure_date, flight_duration: flight_duration, departure_time: departure_time )
    end