#=begin
# Controller responsible for handeling interactions between
# views rendering data from Presentations table for the user
#=end
class PresentationsController < ApplicationController
  # module PresentationsHelper defined in helpers directory.

  include PresentationsHelper

  # instantiant local user object to point to  user currently logged in

  def new
    @user = current_user
  end

  # create a new presentation object and add to an instance of Section

  def create
    @presentation = Section.find(params[:section_id]).presentations.build(presentations_params)
    @presentation.save
    redirect_to current_user
  end

  # destroy presentation instance and redirect to show page of current user

  def destroy
    delete_presentation(params[:id])
    flash[:success] = 'Presentation deleted'
    redirect_to current_user
  end

  private

  # return paramaters from url post request for building presentation instance

  def presentations_params
    params.permit(:title)
  end
end
