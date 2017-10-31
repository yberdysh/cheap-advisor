class RestaurantsController < ApplicationController

RESTAURANTS = [
  {name: "Dishoom", address: "Shoreditch, London", category: "indian"},
  {name: "The Dove", address: "Ha, London", category: "pub"}
]

  def index
    @category = params[:food_type]
    if @category
      @restaurants = RESTAURANTS.select {|restaurant| restaurant[:category] == @category}
    else
      @restaurants = RESTAURANTS
    end
  end

  def create
    render plain: "Restaurant #{params[:name]} should be created!"
  end

  def show
    id = params[:id].to_i
    @restaurant = RESTAURANTS[id]
  end
end
