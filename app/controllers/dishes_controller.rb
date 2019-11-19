class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to dish_path(@dish)
    else
      render :new
    end
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    if @dish.update(dish_params)
      redirect_to dish_path(@dish)
    else
      render :edit
    end
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect_to dishes_path
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :description, :price, :photo)
  end
end
