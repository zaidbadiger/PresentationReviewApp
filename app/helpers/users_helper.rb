module UsersHelper
  #=begin returns array of presentations that a user
  # needs to leave review for and an array of presentations
  #=end that a user can view feedback for
  def split_pres(section)
    need_to_review = []
    view_feedback = []
    section.presentations.each do |presentation|
      presenter_ids = presentation.users.map(&:id)
      if presenter_ids.include?(@user.id)
        view_feedback << presentation
      else
        need_to_review << presentation
      end
    end
    [need_to_review, view_feedback]
  end
end
