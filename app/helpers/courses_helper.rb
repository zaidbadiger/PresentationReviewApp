module CoursesHelper
  include SectionsHelper

  # deletes a course object along with corresponding sections
  def delete_course(course_id)
    dead_sections = []
    curr_course = Course.find(course_id)
    curr_course.sections.each { |section| dead_sections << section.id }
    dead_sections.each { |id| delete_section(id) }
    curr_course.destroy
  end
end
