#=begin
# Controller responsible for handeling Reviews for Presentation from User model
#=end
class ReviewsController < ApplicationController
  # instantiate instance for presentation and current user

  def new
    @presentation = Presentation.find(params[:id])
    @user = current_user
  end

  # create new instance of review for current presentation instance

  def create
    @review = Presentation.find(params[:id]).reviews.build(reviews_params)
    @review.user_id = current_user.id
    @review.save
    redirect_to current_user
  end

  # instantiates tuples for join table of reviews and User model

  def index
    @user = current_user
    @presentation = Presentation.find(params[:id])
  end

  private

  # returns attributes for reviews instance from form data of post request

  def reviews_params
    params.permit(:score, :comment)
  end
end
