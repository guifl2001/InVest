class UserOpcaosController < ApplicationController
  def new
    @user_opcao = UserOpcao.new
  end

  def create
    @opcao = Opcao.find(params[:opcao_id])
    @user_opcao = UserOpcao.new
    @user_opcao.opcao = @opcao
    @user_opcao.user = current_user
    @user_opcao.save
    redirect_to @user_opcao
  end

  def destroy
    @user_opcao.destroy
    redirect_to @opcao
  end
end
