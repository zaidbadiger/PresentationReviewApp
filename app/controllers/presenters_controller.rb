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
    user_id = @presentation_user.id
    pres_id = params[:presentation_id]
    sect_id = params[:section_id]
    #=begin reload page if the current user assigned to presentation could not be found or not in roster.
    # Else find User and assign to presentation instance
    #=end
    unless @presentation_user.nil? || Roster.find_by(section_id: sect_id, user_id: user_id).nil?
      Presenter.create(presentation_id: pres_id, user_id: user_id).save! if Presenter.find_by(presentation_id: pres_id, user_id: user_id).nil?
    end
    redirect_to "/sections/#{sect_id}/presentations/#{pres_id}"
  end

  # delete presenter for current presentation instance

  def destroy
    delete_presenter(params[:presenter_id])
    flash[:success] = 'Presenter deleted'
    redirect_to "/sections/#{params[:section_id]}/presentations/#{params[:presentation_id]}"
  end
end
