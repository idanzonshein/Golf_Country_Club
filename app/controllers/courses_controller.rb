class CoursesController < ApplicationController
  before_action :find_course, only: %i[show edit update]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)
    redirect_to courses_path
  end

  def show; end

  def edit; end

  def update
    @course.update(course_params)
    redirect_to course_path(@course)
  end

private

  def find_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(
      :name,
      :address,
      :city,
      :state,
      :description,
      :price,
      :par,
      :difficulty,
      :length
    )
  end
end
