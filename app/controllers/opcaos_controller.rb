class OpcaosController < ApplicationController
  def show
    @opcao = Opcao.find(params[:id])
  end

  def index
    @opcaos = Opcao.all
  end
end
