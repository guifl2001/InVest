class UsersController < ApplicationController
  before_action :set_user, only: [:follow, :unfollow]
  skip_before_action :authenticate_user!, only: %i[show index]

  def index
    if current_user.present?
      @users = User.where.not(id: current_user.id)
    else
      @users = User.all
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def options
    render json: User.find(params[:id]).faculdades.pluck(:sigla)
  end

  def follow
    if current_user.follow(@user.id)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  def unfollow
    if current_user.unfollow(@user.id)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { render action: :follow }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
