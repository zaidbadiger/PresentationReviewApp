module PresentationsHelper
  include ReviewHelper
  include PresenterHelper

  def delete_presentation(presentation_id)
    dead_review_ids = []
    dead_presenter_ids = []
    Presentation.find(presentation_id).reviews.each { |review| dead_review_ids << review.id }
    Presenter.find(presentation_id: presentation_id).each { |presenter| dead_presenter_ids << presenter.id }
    dead_review_ids.each { |id| delete_review(id) }
    dead_presenter_ids.each { |id| delete_presenter(id) }
  end
end
