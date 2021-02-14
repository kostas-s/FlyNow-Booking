class PassengerMailer < ApplicationMailer
  default from: 'passengers@flynow.com'

  def booking_email
    @passenger = params[:passenger]
    @booking = params[:booking]
    mail(to: @passenger.email, subject: "Booking ##{@booking.id}")
  end

end
