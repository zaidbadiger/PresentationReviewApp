class PresentersController < ApplicationController
  include PresentersHelper

  def new
    @user = current_user
    @current_presentation = Presentation.find(params[:presentation_id])
  end

  def create
    @presentation_user = User.find_by(email: params[:email])
    unless @presentation_user.nil? || Roster.find_by(section_id: params[:section_id], user_id: @presentation_user.id).nil?
      if Presenter.find_by(presentation_id: params[:presentation_id], user_id: @presentation_user.id).nil?
        @presenter_instance = Presenter.create(presentation_id: params[:presentation_id], user_id: @presentation_user.id)
        @presenter_instance.save!
      end
    end
    redirect_to "/sections/#{params[:section_id]}/presentations/#{params[:presentation_id]}"
  end

  def destroy
    delete_presenter(params[:presenter_id])
    flash[:success] = 'Presenter deleted'
    redirect_to "/sections/#{params[:section_id]}/presentations/#{params[:presentation_id]}"
  end
end
