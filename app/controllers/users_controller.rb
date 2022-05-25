# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def show
    @user = User.find(params[:id])

    gon.users_places = @user.places
  end
end
