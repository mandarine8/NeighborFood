class BookingsController < ApplicationController

    def show
      @booking = Booking.find(params[:id])
    end

    def create
      
      @booking = Booking.new(booking_params)
      @booking.user = current_user
      dish = Dish.find(params[:dish_id])
      @booking.dish = dish
      @booking.save!
        redirect_to booking_path(@booking)
    end

    private

    def booking_params
      params.require(:booking).permit(:date, :quantity)
    end


  end
