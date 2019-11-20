class BookingsController < ApplicationController

    def show
      @booking = Booking.find(params[:id])
    end

    def create
      @booking = Booking.new
      @booking.user = current_user
      dish = Dish.find(params[:dish_id])
      @booking.dish = dish
      @booking.save!
        redirect_to booking_path(@booking)
    end
end
