class OpcaosController < ApplicationController
  def show
    @opcao = Opcao.find(params[:id])
  end

  def index
    @cursos = Curso.all
    @opcaos = Opcao.all
  end
end
