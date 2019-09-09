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
    @faculdades = Faculdade.where.not("sigla = '-' OR sigla IS NULL").page(params[:page]).per(16)

    if params[:faculdade].present?
      if params[:faculdade].present? && params[:faculdade].length <= 5
        @faculdades = Faculdade.where("sigla ILIKE ?", "%#{params[:faculdade]}%").page(params[:page]).per(16)
      else
        @faculdades = Faculdade.where("name ILIKE ?", "%#{params[:faculdade]}%").page(params[:page]).per(16)
      end
    else
      @faculdades
    end
  end
end
