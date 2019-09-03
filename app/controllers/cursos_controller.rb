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

  def self.my_import(file)
    cursos = []
    CSV.foreach(file.path, headers: true) do |row|
      cursos << Curso.new(row.to_h)
    end
    Curso.import cursos, recursive: true
  end
end
