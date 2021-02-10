class BookingsController < ApplicationController
  def new
    @flight = Flight.find_by(id: params[:flight])
    @passenger_num = params[:passengers]
    @passengers = []
    @passenger_num.to_i.times { @passengers.append Passenger.new }
  end

  def create
  end
end
