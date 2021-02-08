class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |airport| ["#{airport.name} [#{airport.acronym}] ", airport.id] }
  end
end
