class PresentationsController < ApplicationController

  def new
    @user = current_user
  end

  def create
    @presentation = Section.find(params[:section_id]).presentations.build(presentations_params)
    @presentation.save
    redirect_to current_user
  end

  def destroy
    @sel_presentation = Presentation.find(params[:id])

    flash[:success] = "Presentation deleted"
    redirect_to current_user
  end

  private

    def presentations_params
      params.permit(:title)
    end
end
