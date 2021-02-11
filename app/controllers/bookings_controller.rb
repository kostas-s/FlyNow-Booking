class BookingsController < ApplicationController
  before_action :check_flight_exists, only: [:create, :new]

  def new
    @flight = Flight.find_by(id: params[:flight])
    @passenger_num = params[:passengers]
    @booking = Booking.new(flight_id: @flight.id)
    @passenger_num.to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      respond_to do |format|
        format.html { redirect_to booking_path(@booking) }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to '/', alert: "Booking could not be created" }
        format.json { head :no_content }
      end
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking[:flight_id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:email, :name])
  end

  def check_flight_exists
    unless Flight.find_by(id: params[:flight]) ||
      (params[:booking]) && Flight.find_by(id: params[:booking][:flight_id])
      respond_to do |format|
        format.html { redirect_to '/', alert: "Flight not found" }
      end
    end
  end

end
