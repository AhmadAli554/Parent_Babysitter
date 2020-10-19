require "application_system_test_case"

class SittersTest < ApplicationSystemTestCase
  setup do
    @sitter = sitters(:one)
  end

  test "visiting the index" do
    visit sitters_url
    assert_selector "h1", text: "Sitters"
  end

  test "creating a Sitter" do
    visit sitters_url
    click_on "New Sitter"

    fill_in "Location", with: @sitter.location
    fill_in "Name", with: @sitter.name
    fill_in "Years experience", with: @sitter.years_experience
    click_on "Create Sitter"

    assert_text "Sitter was successfully created"
    click_on "Back"
  end

  test "updating a Sitter" do
    visit sitters_url
    click_on "Edit", match: :first

    fill_in "Location", with: @sitter.location
    fill_in "Name", with: @sitter.name
    fill_in "Years experience", with: @sitter.years_experience
    click_on "Update Sitter"

    assert_text "Sitter was successfully updated"
    click_on "Back"
  end

  test "destroying a Sitter" do
    visit sitters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sitter was successfully destroyed"
  end
end
