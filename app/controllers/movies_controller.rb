class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:production_company).all.order("average_vite DESC")
  end

  def show
    @movies = Movie.find(params[:id])
  end
end
