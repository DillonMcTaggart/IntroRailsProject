class PublishersController < ApplicationController
  def index
    @publishers = Publisher.order_by_games
  end

  def show
    @publisher = Publisher.find(params[:id])
  end
end
