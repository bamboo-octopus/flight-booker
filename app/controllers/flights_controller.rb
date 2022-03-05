class FlightsController < ApplicationController
  def index
    @flights = Flight.all

    @departure_airport_options = Airport.all.map {|a| [a.code, a.id] }
    @arrival_airport_options = Airport.all.map {|a| [a.code, a.id] }
    @date_options = Flight.all.map {|d| d.flight_departure_time_formatted }

    

    

  end
end
