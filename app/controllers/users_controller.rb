class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @dishes = @user.dishes.last(5).to_a
    @booked_dishes = @user.booked_dishes.last(5).to_a
  end
end

  # LOGIQUE INUTILE !
  # def become_cooker
  #   # if il est deja cooker,
  #   if current_user.cooker == true
  #     redirect_to user_path(current_user)
  #   else
  #     current_user.cooker = true
  #   # redirect to la page du user en question
  #     redirect_to user_path(current_user)
  #   end
  # end
