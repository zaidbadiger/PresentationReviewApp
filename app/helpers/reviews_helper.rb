# helper methods for Reviews controller
module ReviewsHelper
  # deletes a review object
  def delete_review(review_id)
    Review.find(review_id).destroy
  end
end
