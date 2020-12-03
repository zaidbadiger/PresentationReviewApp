class CoursesController < ApplicationController
  def new
    @course = current_user.courses.build
  end

  def create
    @course = current_user.courses.build(course_params)
    redirect_to current_user

  end


  private

    def user_params
      params.require(:user).permit(:name)
    end

end
