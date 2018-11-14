class BookingsController < ApplicationController
  before_action :find_jet, only: [:new, :create, :show]
  before_action :find_booking, only: [:show, :destroy]

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
  end

  def destroy
    @booking.destroy
    redirect_to jet_path(@booking.jet)
  end

  private

  def find_jet
    @jet = Jet.find(params[:jet_id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :passengers, :destination, :jet_id, :user_id)
  end
end
