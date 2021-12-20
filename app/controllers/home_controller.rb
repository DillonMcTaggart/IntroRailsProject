class HomeController < ApplicationController
  def index
    @games = Game.includes(:publisher)
                 .order('sales DESC')
                 .limit(10)

    @publishers = Publisher.ordered_by_games.limit(10).limit(10)
  end
end
