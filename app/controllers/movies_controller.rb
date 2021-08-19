class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy, :chef]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movie, notice: 'movie was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'movie was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
    redirect_to movies, notice: 'movie was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = Movie.find(params[:id])
  end

    # Only allow a trusted parameter "white list" through.
  def movie_params
    params.require(:movie).permit(:name, :poster_url, :overview)
  end
end
