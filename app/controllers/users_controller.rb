class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @rating = Rating.new
    @dishes = @user.dishes.last(5).to_a
    @booked_dishes = @user.booked_dishes.order(:created_at).to_a
    @booked_dishes = @user.bookings.order(created_at: :desc).to_a.map { |booking| booking.dish }.first(5)

  end



end

