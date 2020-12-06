#=begin
# Controller responsible for handeling interactions with Presenter
# model and Presentation
#=end
class PresentersController < ApplicationController
  # module PresentationsHelper defined in helpers directory.

  include PresentersHelper

  #=begin
  # instantiate instances for user currently logged in.
  # instantites instance for presentation currently being assigned presenter
  #=end
  def new
    @user = current_user
    @current_presentation = Presentation.find(params[:presentation_id])
  end

  #=begin
  # creates instance of presentation for a particular presentation.
  # redirects to view of current users's Presentation instance
  #=end
  def create
    @presentation_user = User.find_by(email: params[:email])
    #=begin reload page if the current user assigned to presentation could not be found or not in roster.
    # Else find User and assign to presentation instance
    #=end
    unless @presentation_user.nil? || Roster.find_by(section_id: params[:section_id], user_id: @presentation_user.id).nil?
      if Presenter.find_by(presentation_id: params[:presentation_id], user_id: @presentation_user.id).nil?
        @presenter_instance = Presenter.create(presentation_id: params[:presentation_id], user_id: @presentation_user.id)
        @presenter_instance.save!
      end
    end
    redirect_to "/sections/#{params[:section_id]}/presentations/#{params[:presentation_id]}"
  end

  # delete presenter for current presentation instance

  def destroy
    delete_presenter(params[:presenter_id])
    flash[:success] = 'Presenter deleted'
    redirect_to "/sections/#{params[:section_id]}/presentations/#{params[:presentation_id]}"
  end
end
