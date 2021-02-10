class BookingsController < ApplicationController

  def new
    @flight = Flight.find_by(id: params[:flight])
    @passenger_num = params[:passengers]
    @booking = Booking.new(flight_id: @flight.id)
    @passenger_num.to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    puts "=============booking is ========" + @booking.passengers[0].name
    if @booking.save!
      puts "====================BRAVOOOOOOO"
      redirect_to booking_path(@booking)
    else
      puts "====================ARXIDIA"
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

end
