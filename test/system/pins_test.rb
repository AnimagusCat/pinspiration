require "application_system_test_case"

class PinsTest < ApplicationSystemTestCase
  setup do
    @pin = pins(:one)
  end

  test "visiting the index" do
    visit pins_url
    assert_selector "h1", text: "Pins"
  end

  test "creating a Pin" do
    visit pins_url
    click_on "New Pin"

    fill_in "Board", with: @pin.board_id
    fill_in "Caption", with: @pin.caption
    fill_in "Imageurl", with: @pin.imageURL
    fill_in "Title", with: @pin.title
    fill_in "User", with: @pin.user_id
    click_on "Create Pin"

    assert_text "Pin was successfully created"
    click_on "Back"
  end

  test "updating a Pin" do
    visit pins_url
    click_on "Edit", match: :first

    fill_in "Board", with: @pin.board_id
    fill_in "Caption", with: @pin.caption
    fill_in "Imageurl", with: @pin.imageURL
    fill_in "Title", with: @pin.title
    fill_in "User", with: @pin.user_id
    click_on "Update Pin"

    assert_text "Pin was successfully updated"
    click_on "Back"
  end

  test "destroying a Pin" do
    visit pins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pin was successfully destroyed"
  end
end
