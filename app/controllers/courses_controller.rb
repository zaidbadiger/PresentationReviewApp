class CoursesController < ApplicationController
  def new
    @course = current_user.courses.build
  end

  def create
    @course = current_user.courses.build(course_params)
    @course.save
    redirect_to current_user
  end


  private

    def course_params
      params.permit(:name)
    end

end
