class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)
    redirect_to course_path(@course)
  end

  def show
    @course = Course.find(params[:id])
  end



private
  def course_params
    params.require(:course).permit(:name,
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

