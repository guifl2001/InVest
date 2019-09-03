class OpcaosController < ApplicationController
  def show
    @opcao = Opcao.find(params[:id])
  end

  def index
    @cursos = Curso.all
    @opcaos = Opcao.all.page(params[:page]).per(16)
    if params[:query].present?
      # @opcaos = Opcao.where(vagas: params[:query])

      @opcaos = Opcao.where("ocde_curso ILIKE ?", "%#{params[:query]}%")
    else
      @opcaos = Opcao.all
    end
  end
end
