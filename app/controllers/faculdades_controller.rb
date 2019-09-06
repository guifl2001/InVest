class FaculdadesController < ApplicationController
  def show
    @faculdade = Faculdade.find(params[:id])
    @faculs = Faculdade.geocoded

    @markers = @faculs.map do |faculdade|
      {
        lat: faculdade.latitude,
        lng: faculdade.longitude
      }
    end
  end

  def index
    @faculdades = Faculdade.all.page(params[:page]).per(16)
  end
end
