class CursosController < ApplicationController
  def show
    @curso = Curso.find(params[:id])
  end

  def index
    @cursos = Curso.all
  end
end
