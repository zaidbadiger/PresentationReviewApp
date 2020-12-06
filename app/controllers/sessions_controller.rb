#=begin
# Controller responsible for handling interactions
# on the main login and sign up pages
#=end
class SessionsController < ApplicationController

  # links with the login page

  def new
  end

  # allows user to sign in

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to user
    else
      
      flash.now[:danger] = 'Invalid email/password combination' 
      render 'new'
      
    end
  end

  #allows user to sign out
  
  def destroy
    log_out
    redirect_to root_url
  end
end

