class RestaurantsController < ApplicationController

RESTRAURANTS = [
  {name: "Dishoom", address: "Shoreditch, London", category: "indian"},
  {name: "The Dove", address: "Ha, London", category: "pub"}
]

  def index
    @category = params[:food_type]
    if @category
      @restaurants = RESTRAURANTS.select {|restaurant| restaurant[:category] == @category}
    else
      @restaurants = RESTRAURANTS
    end
  end

  def create
    render plain: "Restaurant #{params[:name]} should be created!"
  end

  def show
    id = params[:id].to_i -1
    @restaurants = RESTRAURANTS[id]
end

# This is what params looks like:
# {"authenticity_token"=>"BRCSWl8l4+1BhUjfyhwzArctX7GxnMMqyyqe0sfx9A9FAFglxU89OpAaE7vn+FpsyG7bkaks4IGfjecIlJ+gfw==",
#   "name"=>"food", "address"=>"garbage food", "controller"=>"restaurants", "action"=>"create"}
