class CoursesController < ApplicationController
  before_action :find_course, only: %i[show edit update]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.valid?
      @course.save
      redirect_to courses_path
    else
      flash.now[:messages] = @course.errors.full_messages
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @course.update(course_params)
      redirect_to course_path(@course)
    else
      flash.now[:messages] = @course.errors.full_messages
      render :edit
    end
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
