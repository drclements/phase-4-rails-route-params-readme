class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show 
    # find a cheese using the ID from the URL
    cheese = Cheese.find_by(id: params[:id])
    #send JSON response using that cheese obj
    render json: cheese

  end

end
