class BookingsController < ApplicationController
  before_action :find_jet, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.jet = @jet

    if @booking.save
      redirect_to jet_booking_path(@jet, @booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to jet_path(@booking.jet)
  end

  private
  def find_jet
    @jet = Jet.find(params[:jet_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :passengers, :destination, :jet_id, :user_id)
  end
end
