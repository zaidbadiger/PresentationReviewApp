# helper methods for Presentations controller
module PresentationsHelper
  include ReviewsHelper
  include PresentersHelper

  # deletes a presentation object and corresponding reviews and presenters
  def delete_presentation(presentation_id)
    dead_review_ids = []
    dead_presenter_ids = []
    curr_pres = Presentation.find(presentation_id)
    curr_pres.reviews.each { |review| dead_review_ids << review.id }
    curr_pres.presenters.each { |presenter| dead_presenter_ids << presenter.id }
    dead_review_ids.each { |id| delete_review(id) }
    dead_presenter_ids.each { |id| delete_presenter(id) }
    curr_pres.destroy
  end
end
