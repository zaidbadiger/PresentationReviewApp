class CoursesController < ApplicationController
  include CoursesHelper

  def new
    @course = Course.new
    @user = current_user
  end

  def destroy
    delete_course(params[:course_id])
    flash[:success] = 'Course deleted'
    redirect_to current_user
  end

  def show
  end

  def create
    @course = Course.new(course_params)
    puts course_params
    @course.save
    redirect_to current_user
  end

  private

    def course_params
      result = params.require(:course).permit(:name)
      result[:user_id] = current_user.id
      result
    end

end
