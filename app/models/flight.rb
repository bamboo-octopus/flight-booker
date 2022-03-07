class Flight < ApplicationRecord

    belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_airport_id"
    belongs_to :departure_airport, class_name: "Airport", foreign_key: "departure_airport_id"


  
    def flight_departure_date_formatted
        self.flight_departure_date.strftime("%-m/%d/%Y")
    end

    
end
