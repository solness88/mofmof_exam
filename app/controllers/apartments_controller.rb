class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]
  def index
    @apartments = Apartment.all
  end
  def new
    @apartment = Apartment.new
    2.times {@apartment.stations.new}
  end
  def create
    @apartment = Apartment.new(apartment_params)
    if @apartment.save
      redirect_to apartments_path, notice: "新規登録しました"
    else
      render :new
    end
  end
  def show
    @station_count = 0
  end
  def edit
  end
  def update
    if Apartment.update(apartment_params)
      redirect_to apartment_path
    else
      render :edit
    end
  end
  def destroy
    @apartment.destroy
    redirect_to apartments_path, notice:"投稿を削除しました"
  end
  def confirm
    @apartment = Apartment.new(apartment_params)
  end
  private
  def apartment_params
    params.require(:apartment).permit(:name, :rent, :address, :age, :memo, stations_attributes: [:route, :station, :by_walk])
  end
  def set_apartment
    @apartment = Apartment.find(params[:id])
  end
end
