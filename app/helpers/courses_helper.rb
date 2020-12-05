module CoursesHelper
  include SectionsHelper

  def delete_course(course_id)
    dead_sections = []
    curr_course = Course.find(course_id)
    curr_course.sections.each { |section| dead_sections << section.id }
    dead_sections.each { |id| delete_section(id) }
    curr_course.destroy
  end

  # Returns the current logged-in user (if any).
  def current_course
    if course[params[:id]]
      @current_course ||= Course.find_by()
    end
  end
end
