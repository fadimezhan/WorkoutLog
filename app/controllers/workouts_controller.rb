class WorkoutsController < ApplicationController
  before_action :find_workouts, only: [:show,:edit,:update,:destroy]

  def index
    @workouts = Workout.all.order('created_at DESC')
  end

  def show
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workouts_params)

    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def find_workouts
    @workout = Workout.find(params[:id])
  end

  def workouts_params
    params.require(:workout).permit(:date,:workout,:mood,:length)
  end
end
