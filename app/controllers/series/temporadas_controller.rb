class Series::TemporadasController < ApplicationController
  before_action :set_temporada, only: [:show, :edit, :update, :destroy]

  def index
    @temporadas = Temporada.all
    @temporada = Temporada.new
    # render :show
  end

  def show
  end

  def new
    @temporadas = Temporada.by_season(params[:series_id])
    @temporada = Temporada.new
    @series_id = params[:series_id]
  end

  def edit
  end

  def create
    @temporada = Temporada.new(temporada_params)

    respond_to do |format|
      if @temporada.save
        format.js {}
      end
    end
  end

  def update
    respond_to do |format|
      if @temporada.update(temporada_params)
        format.html { redirect_to @temporada, notice: 'Temporada was successfully updated.' }
        format.json { render :show, status: :ok, location: @temporada }
      else
        format.html { render :edit }
        format.json { render json: @temporada.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @temporada.destroy
    respond_to do |format|
      format.html { redirect_to series_temporadas_url, notice: 'Temporada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_temporada
      @temporada = Temporada.find(params[:id])
    end

    def temporada_params
      params.require(:temporada).permit(:title, :year, :temporada_id, :series_id)
    end
end
