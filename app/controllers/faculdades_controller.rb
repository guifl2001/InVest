class FaculdadesController < ApplicationController
  def show
    @faculdade = Faculdade.find(params[:id])
  end

  def index
    @faculdades = Faculdade.all
  end
end
