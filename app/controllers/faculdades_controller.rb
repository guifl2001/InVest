class FaculdadesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
  def show
    @faculdade = Faculdade.find(params[:id])
    @review = Review.new
    @faculs = Faculdade.geocoded

    @markers = [{
      lat: @faculdade.latitude,
      lng: @faculdade.longitude,
      center: 4,
      infoWindow: render_to_string(partial: "infowindow", locals: { faculdade: @faculdade }),
      image_url: helpers.asset_url('http://images.clipartpanda.com/government-clipart-2000px-Government_icon.svg.png')
    }]
  end

  def index
    @faculdades = Faculdade.where.not("sigla = '-' OR sigla IS NULL").order(:ranking).page(params[:page]).per(16)

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
