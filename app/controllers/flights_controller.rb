class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |airport| ["[#{airport.acronym}] #{airport.name}", airport.id] }
    @dates = Flight.select(:date).distinct(:date).map { |date| [date.date.to_date] }
    @passengers = (1..4)
    if params[:departure_airport_id] && params[:arrival_airport_id] && params[:date] && params[:passengers]
      @available_flights = Flight.all.where(departure_airport_id: params[:departure_airport_id],
                                            arrival_airport_id: params[:arrival_airport_id],
                                            date: params[:date])
      if @available_flights.count.positive?
        respond_to do |format|
          format.html { render :index }
          format.js { available_flights = @available_flights }
          format.json { render :index, @available_flights }
        end
      else
        respond_to do |format|
          format.html { redirect_to '/', alert: "No available flights" }
          format.json { head :no_content }
        end
      end
    end
  end

  # def search
  #   # params should be departure_airport_id, arrival_airport_id, passengers, date
  #   @available_flights = Flight.all.where(departure_airport_id: params[:departure_airport_id],
  #                                         arrival_airport_id: params[:arrival_airport_id],
  #                                         date: params[:date])
  #   puts "============== in get with flights: " + @available_flights.to_s
  #   if @available_flights.count.positive?
  #     respond_to do |format|
  #       format.html { redirect_to '/' }
  #       format.js { available_flights = @available_flights }
  #       format.json { render :index, @available_flights }
  #     end
  #   else
  #     respond_to do |format|
  #       format.html { redirect_to '/', alert: "No available flights" }
  #       format.json { head :no_content }
  #     end
  #   end
  # end

end
