class FoodsController < ApplicationController
  def new
    @user = User.find(current_user.id)
    @food = @user.foods.new
  end

  def create
    @user = User.find(current_user.id)
    @food = @user.foods.new(food_params)
    if @food.save
      flash[:alert]= "Your entry has been saved"
      redirect_to :back
    else
      flash[:alert] ="You did not fill in all fields. Your entry has not been saved."
      redirect_to :back
    end
  end


private
  def food_params
    params.require(:food).permit(:name, :calories_in, :serving_size, :day)
  end
end
