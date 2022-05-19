class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_current_user, except: [:show]

  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = current_user.places.build
  end

  def create
    @place = current_user.places.build(place_params)

    if @place.save
      redirect_to @place, notice: 'Ваше место успешно создано'
    else
      render :new
    end
  end

  private

  def place_params
    params.require(:place).permit(:title, :description, :latitude, :longitude)
  end

  def set_current_user
    @user = current_user
  end
end
