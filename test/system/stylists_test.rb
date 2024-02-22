require "application_system_test_case"

class StylistsTest < ApplicationSystemTestCase
  setup do
    @stylist = stylists(:one)
  end

  test "visiting the index" do
    visit stylists_url
    assert_selector "h1", text: "Stylists"
  end

  test "should create stylist" do
    visit stylists_url
    click_on "New stylist"

    fill_in "Name", with: @stylist.name
    fill_in "Phone", with: @stylist.phone
    click_on "Create Stylist"

    assert_text "Stylist was successfully created"
    click_on "Back"
  end

  test "should update Stylist" do
    visit stylist_url(@stylist)
    click_on "Edit this stylist", match: :first

    fill_in "Name", with: @stylist.name
    fill_in "Phone", with: @stylist.phone
    click_on "Update Stylist"

    assert_text "Stylist was successfully updated"
    click_on "Back"
  end

  test "should destroy Stylist" do
    visit stylist_url(@stylist)
    click_on "Destroy this stylist", match: :first

    assert_text "Stylist was successfully destroyed"
  end
end
