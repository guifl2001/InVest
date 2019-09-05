class CursosController < ApplicationController
  def index
    if params[:curso].present?
      @cursos = Curso.where("name ILIKE ?", "%#{params[:curso]}%").page(params[:page]).per(16)
    else
      @cursos = Curso.all.page(params[:page]).per(16)
    end
  end

  def show
    @curso = Curso.find(params[:id])
  end
end
