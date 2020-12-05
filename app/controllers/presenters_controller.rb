class PresentersController < ApplicationController
  def new
    @user = current_user
    @presentation = Presentation.find(params[:presentation_id])
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

  def destroy
    Presenter.find(params[:presenter_id]).destroy
    flash[:success] = 'Presenter deleted'
    redirect_to "/sections/#{params[:section_id]}/presentations/#{params[:presentation]}"
  end

end
