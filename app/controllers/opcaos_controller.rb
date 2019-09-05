class OpcaosController < ApplicationController
  before_action :set_facu, only: :index

  def show
    @opcao = Opcao.find(params[:id])
  end

  def index
    @opcaos = Opcao.all.page(params[:page]).per(16)

    if params[:facu].present? && params[:opçao].present?
      @opcaos = Opcao.joins(:faculdade).where("sigla ILIKE ? AND ocde_curso ILIKE ?", "%#{params[:facu]}%",
                                              "%#{params[:opçao]}%").page(params[:page]).per(16)
    elsif params[:opçao].present?
      @opcaos = Opcao.where("ocde_curso ILIKE ?", "%#{params[:opçao]}%").page(params[:page]).per(16)
    elsif params[:facu].present?
      @opcaos = Opcao.joins(:faculdade).where("sigla ILIKE ?", "%#{params[:facu]}%").page(params[:page]).per(16)
    else
      @opcaos
    end
  end

  private

  def set_facu
    @faculdade = Faculdade.where(name: params[:query_facu])
  end
end
