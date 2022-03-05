class FlightsController < ApplicationController
  def index
    @flights = Flight.all

    @departure_airport_options = Airport.all.map {|a| [a.code, a.id] }
    @arrival_airport_options = Airport.all.map {|a| [a.code, a.id] }

    

  end
end
