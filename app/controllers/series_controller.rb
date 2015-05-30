class SeriesController < ApplicationController
  before_action :set_series, only: [:show, :edit, :update, :destroy]

  def index
    @series = Series.all
  end

  def show
  end

  def new
    @series = Series.new
  end

  def edit
  end

  def create
    @series = Series.new(series_params)

    respond_to do |format|
      if @series.save
        format.html { redirect_to series_temporadas_url(@temporada.series_id) }
      else
        format.html { render :new }
        format.json { render json: @series.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @series.update(series_params)
        format.html { redirect_to @series, notice: 'Series was successfully updated.' }
        format.json { render :show, status: :ok, location: @series }
      else
        format.html { render :edit }
        format.json { render json: @series.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @series.destroy
    respond_to do |format|
      format.html { redirect_to series_index_url, notice: 'Series was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_series
      @series = Series.find(params[:id])
    end

    def series_params
      params.require(:series).permit(:title, :description, :series_id)
    end
end
