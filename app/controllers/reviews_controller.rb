#=begin
# Controller responsible for handeling Reviews for Presentation
#=end
class ReviewsController < ApplicationController

  
  def new
    @presentation = Presentation.find(params[:id])
    @user = current_user
  end

  def create
    @review = Presentation.find(params[:id]).reviews.build(reviews_params)
    @review.user_id = current_user.id
    @review.save
    redirect_to current_user
  end

  def index
    @user = current_user
    @presentation = Presentation.find(params[:id])
  end

  private
  def reviews_params
    params.permit(:score, :comment)
  end
end
