class VisitsController < ApplicationController
  before_action :course

  def index
    @visit = Visit.all
  end

  def new
    @visit = Visit.new
  end

  def show
    @users = User.all
  end

  def create
    @visit = @course.visits.create(visit_params)
    @visit.user = current_user
    if @visit.valid?
      @visit.save
      redirect_to course_visits_path(@course)
    else
      flash.now[:messages] = @visit.errors.full_messages
      render :new
    end
  end

  def destroy
    @visit = Visit.find(params[:id])
    @visit.destroy
    render :index
  end

private

  def visit_params
    params.require(:visit).permit(:date_time, :score, :conditions)
  end

  def course
    @course ||= Course.find(params[:course_id])
  end
end
