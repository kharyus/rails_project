class MagicController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def search_results
    @cards = Card.where("name LIKE ?", "%#{params[:q]}%")
  end
end
