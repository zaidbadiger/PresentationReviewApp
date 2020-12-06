module PresentersHelper
  # deletes a presenter object
  def delete_presenter(presenter_id)
    Presenter.find(presenter_id).destroy
  end
end
