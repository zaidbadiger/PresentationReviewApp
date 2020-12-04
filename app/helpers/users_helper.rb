module UsersHelper

  def split_pres(section)
    need_to_review = []
    view_feedback = []
    section.presentations.each do |presentation|
      presenters = presentation.users;
      presenter_ids = presenters.map {|presenter| presenter.id}
	  if presenter_ids.include?(@user.id)
	    view_feedback << presentation
	  else
		need_to_review << presentation
      end
    end
    return need_to_review, view_feedback
  end
end
