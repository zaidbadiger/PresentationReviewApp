class PresentersController < ApplicationController
  def new
    @user = current_user
    render 'new'
  end

  def create
    @presentation_user = User.find_by(email:params[:email])
    @presenter_instance = Presenter.create(presentation_id:params[:presentation_id], user_id:@presentation_user.id)
    @presenter_instance.save!
    @presenter = Presentation.find(params[:presentation_id]).users.find(@presentation_user.id)
    @presenter.save!
    puts @presenter.email
    redirect_to current_user
  end

end
