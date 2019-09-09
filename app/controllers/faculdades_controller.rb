class FaculdadesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
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
    @faculdades = Faculdade.where.not("sigla = '-' OR sigla IS NULL").page(params[:page]).per(16)
  end
end
