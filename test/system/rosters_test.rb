require "application_system_test_case"

class RostersTest < ApplicationSystemTestCase
  setup do
    @roster = rosters(:one)
  end

  test "visiting the index" do
    visit rosters_url
    assert_selector "h1", text: "Rosters"
  end

  test "creating a Roster" do
    visit rosters_url
    click_on "New Roster"

    fill_in "Section", with: @roster.section_id
    fill_in "Status", with: @roster.status
    fill_in "User", with: @roster.user_id
    click_on "Create Roster"

    assert_text "Roster was successfully created"
    click_on "Back"
  end

  test "updating a Roster" do
    visit rosters_url
    click_on "Edit", match: :first

    fill_in "Section", with: @roster.section_id
    fill_in "Status", with: @roster.status
    fill_in "User", with: @roster.user_id
    click_on "Update Roster"

    assert_text "Roster was successfully updated"
    click_on "Back"
  end

  test "destroying a Roster" do
    visit rosters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roster was successfully destroyed"
  end
end
