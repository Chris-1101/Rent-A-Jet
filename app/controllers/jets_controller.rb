class JetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show]
  def index
    ratings = []
    @jets = Jet.all
     @jets = Jet.where.not(latitude: nil, longitude: nil)

    @markers = @jets.map do |jet|
      {
        lng: jet.longitude,
        lat: jet.latitude
      }
    end
  end

  def show
    @jet = Jet.find(params[:id])
    @booking = Booking.new
    @jets = Jet.where.not(latitude: nil, longitude: nil)

    @markers = @jets.map do |jet|
      {
        lng: jet.longitude,
        lat: jet.latitude
      }
    end
  end

  def new
    @jet = Jet.new
  end

  def create
    @jet = Jet.new(jet_params)
    @jet.user = current_user
    if @jet.save!
      redirect_to jet_path(@jet)
    else
      render :new
    end
  end

  def edit
    @jet = Jet.find(params[:id])
  end

  def update
    @jet = Jet.find(params[:id])
    if @jet.update!(jet_params)
      redirect_to jet_path(@jet)
    else
      render :new
    end
  end

  def destroy
    @jet = Jet.find(params[:id])
    @user = @jet.user
    @jet.reviews.each { |r| r.destroy }
    @jet.bookings.each { |b| b.destroy }
    @jet.destroy
    redirect_to user_path(@user)
  end

  def jet_params
    params.require(:jet).permit(:name, :type, :city, :price_hour, :seats, :model, :photo)
  end
end
