class Users::PickupsController < ApplicationController
    before_action :set_pickup , only: [:show , :destroy]
    def new
      @pickup = Pickup.new
    end

    def index
        @pickups = Pickups.all
    end
    def create
      @pickup = Pickup.new(pickup_params)
      @pickup.user = current_user
      if @pickup.save
        flash[:notice] = "pickup was successfully created"
        redirect_to  users_pickups_path (@pickup)
      else
        render 'new'
      end


    end
    def show


    end
    def destory
      @pickup.destroy
      flash[:notice] = "pickup was successfully deleted"
      redirect_to user_pickups_path
    end
    private
    def set_pickup
     @pickup = Pickup.find(params[:id])
   end
   def pickup_params
      params.require(:pickup).permit(:departure_time,:source,:distination)
   end
end
