class TemporadasController < ApplicationController
  before_action :set_temporada, only: [:show, :edit, :update, :destroy]

  # GET /temporadas
  # GET /temporadas.json
  def index
    @temporadas = Temporada.all
  end

  # GET /temporadas/1
  # GET /temporadas/1.json
  def show
  end

  # GET /temporadas/new
  def new
    @temporada = Temporada.new
    @series_id = params[:series_id]
  end

  # GET /temporadas/1/edit
  def edit
  end

  # POST /temporadas
  # POST /temporadas.json
  def create
    @temporada = Temporada.new(temporada_params)

    respond_to do |format|
      if @temporada.save
        format.html { redirect_to "/episodios/new/?temporada_id=#{@temporada.id}&series_id=#{@temporada.series_id}", notice: 'Adicionar Temporada para série' }
      else
        format.html { render :new }
        format.json { render json: @temporada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temporadas/1
  # PATCH/PUT /temporadas/1.json
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

  # DELETE /temporadas/1
  # DELETE /temporadas/1.json
  def destroy
    @temporada.destroy
    respond_to do |format|
      format.html { redirect_to temporadas_url, notice: 'Temporada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temporada
      @temporada = Temporada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temporada_params
      params.require(:temporada).permit(:title, :year, :temporada_id, :series_id)
    end
end
