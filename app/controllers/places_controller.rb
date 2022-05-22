class PlacesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_current_user, except: [:show]
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    @places = Place.all
  end

  def show
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

  def edit
  end

  def update
    if @place.update(place_params)
      redirect_to @place, notice: 'Ваши данные успешно обновлены'
    else
      render :edit
    end
  end

  def destroy
    @place.destroy
    redirect_to places_url, notice: 'Ваше место успешно удалено'
  end

  private

  def place_params
    params.require(:place).permit(:title, :description, :latitude, :longitude)
  end

  def set_current_user
    @user = current_user
  end

  def set_place
    @place = Place.find(params[:id])
  end
end
