class RatingsController < ApplicationController
  def new
    @rating = Rating.new
    @user = User.find(params[:user_id])
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.user = User.find(params[:user_id])
    @rating.save
    redirect_to user_path(@rating.user)
  end

  private

  def rating_params
    params.require(:rating).permit(:note)
  end
end
