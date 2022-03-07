class FlightsController < ApplicationController
  def index
    @flights = Flight.all

    

    @departure_airport_options = Airport.all.map {|a| [a.code, a.id] }
    @arrival_airport_options = Airport.all.map {|a| [a.code, a.id] }

    
    @all_dates = Flight.pluck(:flight_departure_date)
    @formatted_dates = @all_dates.map {|d| [d.strftime("%-m/%d/%Y"), d]}

   
    @date_options = Flight.all.map {|d| [d.flight_departure_date.strftime("%-m/%d/%Y"), d.flight_departure_date] }.uniq

       
    if params.has_key?(:departure_airport)
      @available_flights = Flight.where(departure_airport_id: params[:departure_airport]).where(arrival_airport_id: params[:arrival_airport]).where(flight_departure_date: params[:departure_date])
    end

    
  end

  private 
  def flight_params
    params.require(:flight).permit(:departure_airport, :arrival_airport, :departure_date, :number_of_passengers)
  end


end
