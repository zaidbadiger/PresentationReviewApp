class PresentationStudentController < ApplicationController
  def new
    @user = current_user
    render 'new'
  end

  def show

  end

  def create
    @presentation_user = User.find_by(email:params[:email])
    @presenter_instance = Presenter.create(presentation_id:params[:id], user_id:@presentation_user.id)
    @presenter_instance.save!
    @presenter = Presentation.find(params[:id]).users.find(@presentation_user.id)
    @presenter.save!
    puts @presenter.email
    redirect_to current_user
  end
end
