#=begin
# responsible for handeling roster functionality. Implements many to many
# relationship between model User and model Section
#=end
class RostersController < ApplicationController
  # instantiates instance of the current user logged in

  def new
    @user = current_user
  end

  # shows current list of students assigned to section and provides form to add new student

  def show
    @section = Section.find(params[:section_id])
    @user_list = @section.users
  end

  # assigns student to current section instance

  def create
    @student = User.find_by(email: params[:email])

    #=begin
    # being if the selected student does not exist do not add and redirect back.
    # else assign student to section and record in roster instance 
    #=end
    unless @student.nil?
      if Roster.find_by(section_id: params[:section_id], user_id: @student.id).nil?
        @roster_instance = Roster.create(section_id: params[:section_id], user_id: @student.id)
        @roster_instance.save!
      end
    end
    redirect_to "/sections/#{params[:section_id]}/rosters"
  end

  # remove student from current section

  def destroy
    delete_roster(params[:roster_id])
    flash[:success] = 'Roster deleted'
    redirect_to "/sections/#{params[:section_id]}/rosters"
  end
end
