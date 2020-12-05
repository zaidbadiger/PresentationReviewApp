class PresentersController < ApplicationController
  include PresentersHelper

  def new
    @user = current_user
    @current_presentation = Presentation.find(params[:presentation_id])
  end

  def create
    @presentation_user = User.find_by(email: params[:email])
    if !@presentation_user.blank? then 
      @presenter_instance = Presenter.create(presentation_id: params[:presentation_id], user_id: @presentation_user.id)
      @presenter_instance.save!
    end
    redirect_to "/sections/#{params[:section_id]}/presentations/#{params[:presentation_id]}"
  end

  def destroy
    delete_presenter(params[:presenter_id])
    flash[:success] = 'Presenter deleted'
    redirect_to "/sections/#{params[:section_id]}/presentations/#{params[:presentation_id]}"
  end
end
