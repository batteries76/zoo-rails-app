require "application_system_test_case"

class ZoosTest < ApplicationSystemTestCase
  setup do
    @zoo = zoos(:one)
  end

  test "visiting the index" do
    visit zoos_url
    assert_selector "h1", text: "Zoos"
  end

  test "creating a Zoo" do
    visit zoos_url
    click_on "New Zoo"

    fill_in "Location", with: @zoo.location
    fill_in "Name", with: @zoo.name
    click_on "Create Zoo"

    assert_text "Zoo was successfully created"
    click_on "Back"
  end

  test "updating a Zoo" do
    visit zoos_url
    click_on "Edit", match: :first

    fill_in "Location", with: @zoo.location
    fill_in "Name", with: @zoo.name
    click_on "Update Zoo"

    assert_text "Zoo was successfully updated"
    click_on "Back"
  end

  test "destroying a Zoo" do
    visit zoos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zoo was successfully destroyed"
  end
end
