class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:publisher).all.order("sales DESC")
  end

  def show
    @movies = Movie.find(params[:id])
  end
end
