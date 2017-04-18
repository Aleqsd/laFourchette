class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
    @new_comment = Comment.new
  end
  def new
    @restaurant = Restaurant.new
  end

  before_action :authenticate_user!, except: [:index, :show]

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user

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
