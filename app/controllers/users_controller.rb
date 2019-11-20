class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]).geocoded
    @dishes = @user.dishes.last(5).to_a
    @booked_dishes = @user.booked_dishes.last(5).to_a
  end
end
