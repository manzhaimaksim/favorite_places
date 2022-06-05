# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_user, except: %i[index]

  def show
    gon.users_places = @user.places
  end

  def favorite
    @places_likes = Place.joins("INNER JOIN likes ON likes.place_id = places.id")
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
