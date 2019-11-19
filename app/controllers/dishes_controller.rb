class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @dish = Dish.new
    # @user = current_user if current_user
    @user = User.first
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save!
      redirect_to dishes_path(@dish)
    else
      render :new
    end
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update(dish_params)
      redirect_to dish_path(@dish)
    else
      render :edit
    end
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect_to user_path
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :description, :price, :photo, :photo_cache, :user_id)
  end
end
