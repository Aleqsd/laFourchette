class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.valid?
      @restaurant.save!
      redirect_to restaurant_path(@restaurant)
    else
      # réaffiche le template new pour avoir formulaire + erreurs
      render :new
    end
  end

  private

  def restaurant_params
    # n'autorise que ces paramètres
    params.require(:restaurant).permit(:name, :photo, :city)
  end

end
