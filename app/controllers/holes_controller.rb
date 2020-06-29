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
    redirect_to course_hole_path(@course, @hole)
  end

private
  def hole_params
    params.require(:hole).permit(:distance, :par_score, :water_hazard)
  end

  def course
    @course ||= Course.find(params[:course_id])
  end



end