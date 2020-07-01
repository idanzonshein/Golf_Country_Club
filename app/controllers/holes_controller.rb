class HolesController < ApplicationController
  before_action :course

  def index
    @holes = Hole.all
  end

  def show
    @hole = Hole.find(params[:id])
  end

  def new
    @hole = Hole.new
  end

  def create
    @hole = @course.holes.create(hole_params)
    if @hole.valid?
      @hole.save
      redirect_to course_path(@course)
    else
      flash.now[:messages] = @hole.errors.full_messages
      render :new
    end
  end

  def edit
    @hole = Hole.find(params[:id])
  end

  def update
    @hole = Hole.find(params[:id])
    if @hole.update(hole_params)
      redirect_to course_holes_path(@course)
    else
      flash.now[:messages] = @hole.errors.full_messages
      render :edit
    end
  end

  def destroy
    @hole = Hole.find(params[:id])
    @hole.destroy
    redirect_to course_path(@course)
  end

private

  def hole_params
    params.require(:hole).permit(:hole_number, :distance, :par_score, :water_hazard)
  end

  def course
    @course ||= Course.find(params[:course_id])
  end
end
