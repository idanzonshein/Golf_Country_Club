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
    @hole.save
    redirect_to course_path(@course)
  end

  def edit
    @hole = Hole.find(params[:id])
  end

  def update
    @hole = @course.holes.update(hole_params)
    redirect_to course_holes_path(@course)
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
