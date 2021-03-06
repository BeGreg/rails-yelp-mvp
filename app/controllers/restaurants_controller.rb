class RestaurantsController < ApplicationController
  before_action :load_restaurant, only: [:show, :update, :edit, :destroy]

  def index
    @restaurants = Restaurant.all
    @reviews = Review.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @restaurant.update_attributes(restaurant_params)
    redirect_to restaurants.path
  end

  def show
    @reviews = Review.where(restaurant_id: @restaurant.id)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants.path
  end

  def average
    puts "hello on débute"
    count = self.reviews.size
    sum = 0
    puts count
    self.reviews.each do |review|
      sum += review.rating
      puts sum
    end
    average = (sum / count)
    puts average
  end

  private

  def load_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :mobile_phone, :category)
  end
end
