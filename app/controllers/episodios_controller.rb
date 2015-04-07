class EpisodiosController < ApplicationController
  before_action :set_episodio, only: [:show, :edit, :update, :destroy]

  # GET /episodios
  # GET /episodios.json
  def index
    @episodios = Episodio.all
  end

  # GET /episodios/1
  # GET /episodios/1.json
  def show
  end

  # GET /episodios/new
  def new
    @episodio = Episodio.new
    @temporada_id = params[:temporada_id]
  end

  # GET /episodios/1/edit
  def edit
  end

  # POST /episodios
  # POST /episodios.json
  def create
    @episodio = Episodio.new(episodio_params)

    respond_to do |format|
      if @episodio.save
        format.html { redirect_to @episodio, notice: 'Episodio was successfully created.' }
        format.json { render :show, status: :created, location: @episodio }
      else
        format.html { render :new }
        format.json { render json: @episodio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /episodios/1
  # PATCH/PUT /episodios/1.json
  def update
    respond_to do |format|
      if @episodio.update(episodio_params)
        format.html { redirect_to @episodio, notice: 'Episodio was successfully updated.' }
        format.json { render :show, status: :ok, location: @episodio }
      else
        format.html { render :edit }
        format.json { render json: @episodio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /episodios/1
  # DELETE /episodios/1.json
  def destroy
    @episodio.destroy
    respond_to do |format|
      format.html { redirect_to episodios_url, notice: 'Episodio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_episodio
      @episodio = Episodio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def episodio_params
      params.require(:episodio).permit(:title, :temporada_id, :series_id)
    end
end
