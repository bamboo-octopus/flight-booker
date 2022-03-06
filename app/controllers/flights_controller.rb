class FlightsController < ApplicationController
  def index
    @flights = Flight.all

    

    @departure_airport_options = Airport.all.map {|a| [a.code, a.id] }
    @arrival_airport_options = Airport.all.map {|a| [a.code, a.id] }
    @date_options = Flight.all.map {|d| [d.flight_departure_time_formatted, d.flight_departure_time] } 

    if params.has_key?(:departure_airport)
      @available_flights = Flight.where(departure_airport_id: params[:departure_airport]).where(arrival_airport_id: params[:arrival_airport]).where(flight_departure_time: params[:departure_date])
    end

  end

  private 
  def flight_params
    params.require(:flight).permit(:departure_airport, :arrival_airport, :departure_date, :number_of_passengers)
  end


end
