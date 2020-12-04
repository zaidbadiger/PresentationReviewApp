class SectionStudentController < ApplicationController
  def new
    @student = Section.find(params:id).users.build
  end

  def show
    render 'show'
  end

  def create
    @val = User.find_by(email:params[:email])
    @roster_instance = Roster.create(section_id:params[:id], user_id:@val.id)
    @roster_instance.save!
    @student = Section.find(params[:id]).users.find(@val.id)
    @student.save!
    puts @student.email
    redirect_to current_user
  end

  private
      def student_section_params
        params.permit(:email)
      end
end
