#=begin
# Controller responsible for handling interactions between
# views rendering data from users table for the user
#=end
class UsersController < ApplicationController
  #=begin
  # instantiate user to determine whether to display instructor dashboard
  # or to display student dasboard
  #=end

  def show
    @user = User.find(params[:id])
    if @user.is_instructor
      render 'instructor'
    else
      @sections = @user.sections
      render 'student'
    end
  end

  # instantiate new User object

  def new
    @user = User.new
  end

  # create a new user

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      redirect_to '/sessions/new'
    else
      render 'new'
    end
  end

  private

  # return parameters from url post request for building user instance

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :is_instructor)
  end
end
