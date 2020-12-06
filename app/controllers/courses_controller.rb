# frozen_string_literal: false

#=begin
# Controller responsible for handeling interactions between
# views rendering data from Courses table and user
#=end
class CoursesController < ApplicationController
  # include helper functions
  include CoursesHelper

  # instantiates instance variables

  def new
    @course = Course.new
    @user = current_user
  end

  # call to delete courses and redirect to user view

  def destroy
    delete_course(params[:course_id])
    flash[:success] = 'Course deleted'
    redirect_to current_user
  end

  # call to create a new course and add to Course model

  def create
    @course = Course.new(course_params)
    puts course_params
    @course.save
    redirect_to current_user
  end

  private

  #=begin
  # return parameters submitted from form data as post request
  # to build an instance of course
  #=end

  def course_params
    result = params.require(:course).permit(:name)
    result[:user_id] = current_user.id
    result
  end
end
