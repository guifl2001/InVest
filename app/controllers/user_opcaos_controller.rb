class UserOpcaosController < ApplicationController
  before_action :set_user_opcao, only: [:destroy]

  def new
    @user_opcao = UserOpcao.new
  end

  def create
    @opcao = Opcao.find(params[:opcao])
    @user_opcao = UserOpcao.new
    @user_opcao.opcao = @opcao
    @user_opcao.user = current_user
    @user_opcao.save
    redirect_to root_path
  end

  def destroy
    @user_opcao.destroy
  end

  def set_user_opcao
    @user_opcao = UserOpcao.find(params[:id])
  end
end
