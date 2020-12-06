# helper methods for Sections controller 
module SectionsHelper
  include PresentationsHelper
  include RostersHelper

  # deletes a section and all presentations and roster objects that depend on it
  def delete_section(section_id)
    dead_presentations = []
    dead_rosters = []
    curr_section = Section.find(section_id)
    curr_section.presentations.each { |pres| dead_presentations << pres.id }
    curr_section.rosters.each { |roster| dead_rosters << roster.id }
    dead_presentations.each { |id| delete_presentation(id) }
    dead_rosters.each { |id| delete_roster(id) }
    curr_section.destroy
  end
end
