require "application_system_test_case"

class PresentsTest < ApplicationSystemTestCase
  setup do
    @present = presents(:one)
  end

  test "visiting the index" do
    visit presents_url
    assert_selector "h1", text: "Presents"
  end

  test "creating a Present" do
    visit presents_url
    click_on "New Present"

    fill_in "Presentation", with: @present.presentation_id
    fill_in "User", with: @present.user_id
    click_on "Create Present"

    assert_text "Present was successfully created"
    click_on "Back"
  end

  test "updating a Present" do
    visit presents_url
    click_on "Edit", match: :first

    fill_in "Presentation", with: @present.presentation_id
    fill_in "User", with: @present.user_id
    click_on "Update Present"

    assert_text "Present was successfully updated"
    click_on "Back"
  end

  test "destroying a Present" do
    visit presents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Present was successfully destroyed"
  end
end
