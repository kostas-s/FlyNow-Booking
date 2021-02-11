class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |airport| ["[#{airport.acronym}] #{airport.name}", airport.id] }
    @dates = Flight.select(:date).map { |date| [date.date.to_date] }
    @dates.uniq!
    @passengers = (1..4)
    if params[:departure_airport_id] && params[:arrival_airport_id] && params[:date] && params[:passengers]
      @available_flights = Flight.all.where(departure_airport_id: params[:departure_airport_id],
                                            arrival_airport_id: params[:arrival_airport_id]).where("date::date = ?", params[:date])
      @passenger_num = params[:passengers]
      unless @available_flights.count.positive? && @passenger_num.to_i.positive?
        @available_flights = nil
        respond_to do |format|
          format.html { redirect_to '/', alert: "No available flights, please check your options." }
          format.json { head :no_content }
        end
      end
    end
  end

end
