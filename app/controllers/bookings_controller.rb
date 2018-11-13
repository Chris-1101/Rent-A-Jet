class BookingsController < ApplicationController
  before_action :find_jet, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = User.find(params[:user_id])
    @booking.jet = @jet

    if @booking.save
      redirect_to jets_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to jet_path(@booking.jet)
  end

  def find_jet
    @jet = Jet.find(params[:jet_id])
  end
  private


  def booking_params
    params.require(:booking).permit(:duration, :jet_id, :user_id)
  end
end
