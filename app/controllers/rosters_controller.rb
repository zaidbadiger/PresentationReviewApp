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
    if !@student.blank? then
      @roster_instance = Roster.create(section_id: params[:section_id], user_id: @student.id)
      @roster_instance.save!
    end
    redirect_to "/sections/#{params[:section_id]}/rosters"
  end

  def destroy
    delete_roster(params[:roster_id])
    flash[:success] = 'Roster deleted'
    redirect_to "/sections/#{params[:section_id]}/rosters"
  end
end
