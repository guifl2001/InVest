class CursosController < ApplicationController
  def index
    if params[:query].present?
      @cursos.where(params[:query].to_s)
    else
      @cursos = Curso.all
    end
  end

  def show
    @curso = Curso.find(params[:id])
  end
end
