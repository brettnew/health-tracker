class ExercisesController < ApplicationController
  def new
    @user = User.find(current_user.id)
    @exercise = @user.exercises.new
  end

  def create
    @user = User.find(current_user.id)
    @exercise = @user.exercises.new(exercise_params)
    if @exercise.save
      redirect_to :back
    else
      flash[:alert] ="You did not fill in all fields. Your entry has not been saved."
      redirect_to :back
    end
  end


private
  def exercise_params
    params.require(:exercise).permit(:name, :calories_out, :duration, :day)
  end
end
