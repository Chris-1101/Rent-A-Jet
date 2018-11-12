class JetsController < ApplicationController
  def index
    @jets = Jet.all
  end

  def show
    @jet = Jet.find(params[:id])
  end

  def new
    @jet = Jet.new
  end

  def create
    @jet = Jet.new(jet_params)
    if @jet.save
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
    if @jet.save(jet_params)
      redirect_to jet_path(@jet)
    else
      render :new
    end
  end

  def destroy
    @jet = Jet.find(params[:id])
    @jet.destroy
    redirect_to jets_path
  end

  def jet_params
    params.require(:jet).permit(:name, :type, :city, :price_hour, :seats)
  end
end
