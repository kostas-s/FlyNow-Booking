class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |airport| ["[#{airport.acronym}] #{airport.name}", airport.id] }
    @dates = [Date.new(2021, 2, 10), Date.new(2021, 2, 11), Date.new(2021, 2, 12)]
    @passengers = (1..4)
  end
end
