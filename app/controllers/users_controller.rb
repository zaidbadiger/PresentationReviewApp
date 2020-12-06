class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if @user.is_instructor
      render 'instructor'
    else
      @sections = @user.sections
      render 'student'
    end
  end

  def new
    @user = User.new
  end

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

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :is_instructor)
    end
end
