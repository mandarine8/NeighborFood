class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @dishes = @user.dishes.last(5).to_a
  end
end
