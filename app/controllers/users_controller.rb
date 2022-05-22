class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html
      format.any(:xml, :json) { render request.format.to_sym => @user.places }
    end
  end
end
