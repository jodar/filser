class Series::Temporada::EpisodiosController < ApplicationController
  before_action :set_episodio, only: [:show, :edit, :update, :destroy]

  def index
    @episodios = Episodio.all
  end

  def show
  end

  def new
    @episodio = Episodio.new
    @temporada_id = params[:temporada_id]
  end

  def edit
  end

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

  def destroy
    @episodio.destroy
    respond_to do |format|
      format.html { redirect_to episodios_url, notice: 'Episodio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_episodio
      @episodio = Episodio.find(params[:id])
    end

    def episodio_params
      params.require(:episodio).permit(:title, :temporada_id, :series_id)
    end
end
