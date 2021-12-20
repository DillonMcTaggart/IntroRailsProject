class GamesController < ApplicationController
  def index
    @games = Game.includes(:publisher).all.order('sales DESC')
  end

  def show
    @games = Game.find(params[:id])
  end
end
