# helper methods for Rosters controller
module RostersHelper
  # deletes a roster object
  def delete_roster(roster_id)
    Roster.find(roster_id).destroy
  end
end
