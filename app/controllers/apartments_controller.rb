class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end
  def new
    @apartment = Apartment.new
  end
  def create
    Apartment.create(apartment_params)
    redirect_to new_apartment_path
  end
  private
  def apartment_params
    params.require(:apartment).permit(:name, :rent, :address, :age, :memo, :train_line, :station, :on_foot, :train_line2, :station2, :on_foot2)
  end
end
