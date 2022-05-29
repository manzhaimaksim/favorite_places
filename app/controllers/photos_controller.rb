class PhotosController < ApplicationController
  before_action :set_place, only: [:create, :destroy]
  before_action :set_photo, only: [:destroy]

  def create
    @new_photo = @place.photos.build(photo_params)
    @new_photo.user = current_user

    if @new_photo.save
      redirect_to @place, notice: 'Фото успешно добавлено'
    else
      render 'places/show', alert: 'Произошла ошибка. Попробуйте еще раз'
    end
  end

  def destroy
    message = 'Вы удалили фотографию'

    if current_user_can_edit?(@photo)
      @photo.destroy
    else
      message = 'Произошла ошибка. Попробуйте еще раз'
    end

    redirect_to @place
  end

  private

  def set_place
    @place = Place.find(params[:place_id])
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.fetch(:photo, {}).permit(:photo, :title, :alt)
  end
end
