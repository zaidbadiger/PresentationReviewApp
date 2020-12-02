class UsersController < ApplicationController

  def show
    
    @user = User.find(params[:id])
    if @user.is_instructor
      render 'test1'
    else
      render 'test2'
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    puts "This is content"
    if @user.save
      # Handle a successful save.
      flash[:success] = "Welcome to the Sample App!"
      redirect_to '/sessions/new'
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :is_instructor)
    end



end
