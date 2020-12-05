module ReviewsHelper
  def delete_review(review_id)
    Review.find(review_id).destroy
  end
end
