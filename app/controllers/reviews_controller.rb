class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:create, :new]

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.new(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
  end

  private

  def load_review
    @review = Restaurant.find(params[:id])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :restaurant_id, :rating)
  end
end
