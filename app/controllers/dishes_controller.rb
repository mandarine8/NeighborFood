class DishesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @dishes = Dish.search_by_name(params[:query])
    else
      @dishes = Dish.all
    end
    @markers = @dishes.map do |dish|
      {
        lat: dish.user.latitude,
        lng: dish.user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { name: dish.name })
      }
    end
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.user = current_user
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
    redirect_to dishes_path
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :description, :price, :photo, :user_id)
  end
end
