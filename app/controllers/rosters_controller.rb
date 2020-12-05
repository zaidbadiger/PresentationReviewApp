class RostersController < ApplicationController
  def new
    @user = current_user
  end

  def show
    @section = Section.find(params[:section_id])
    @user_list = @section.users
  end

  def create
    @student = User.find_by(email: params[:email])
    @roster_instance = Roster.create(section_id: params[:section_id], user_id: @student.id)
    @roster_instance.save!
    redirect_to "/sections/#{params[:section_id]}/rosters"
  end

  def destroy
    Roster.find(params[:roster_id]).destroy
    flash[:success] = 'Roster deleted'
    redirect_to "/sections/#{params[:section_id]}/rosters"
  end
end
