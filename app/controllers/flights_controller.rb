class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |airport| ["[#{airport.acronym}] #{airport.name}", airport.id] }
    @dates = Flight.select(:date).distinct(:date).map { |date| [date.date.to_date] }
    @passengers = (1..4)
  end

  def get
    # params should be departure_airport_id, arrival_airport_id, passengers, date
  end

end
