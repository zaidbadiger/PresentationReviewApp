class ReviewsController < ApplicationController
  def create
    @review = Presentation.find(params[:id]).reviews.build(reviews_params)
    @review.user_id = current_user.id
    @review.save
    redirect_to current_user
  end

  def new
    @presentation = Presentation.find(params[:id])
    @user = current_user
  end

  def reviews_for_presentation
    @presentation = Presentation.find(params[:id])
    render 'list_reviews_for_presentation'
  end

  private
  def reviews_params
    params.permit(:score, :comment)
  end
end
