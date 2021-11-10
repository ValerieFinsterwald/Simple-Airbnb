class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(params_flat)
    @flat.save
  end

  private

  def params_flat
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

end
