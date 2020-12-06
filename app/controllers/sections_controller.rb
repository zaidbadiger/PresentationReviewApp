# =begin
#   Controller to handle major interactions with Section model
# =end
class SectionsController < ApplicationController
  def new
    @section = Course.find(params[:id]).sections.build
  end

  def destroy
    delete_section(params[:section_id])
    flash[:success] = 'Section deleted'
    redirect_to current_user
  end

  def show
    @user = current_user
    render 'show'
  end

  def create
    @section = Course.find(params[:id]).sections.build(sections_params)
    @section.save
    redirect_to current_user
  end

  private

  def sections_params
    params.permit(:section_number)
  end
end
