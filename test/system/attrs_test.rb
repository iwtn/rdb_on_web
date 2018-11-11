require "application_system_test_case"

class AttrsTest < ApplicationSystemTestCase
  setup do
    @attr = attrs(:one)
  end

  test "visiting the index" do
    visit attrs_url
    assert_selector "h1", text: "Attrs"
  end

  test "creating a Attr" do
    visit attrs_url
    click_on "New Attr"

    click_on "Create Attr"

    assert_text "Attr was successfully created"
    click_on "Back"
  end

  test "updating a Attr" do
    visit attrs_url
    click_on "Edit", match: :first

    click_on "Update Attr"

    assert_text "Attr was successfully updated"
    click_on "Back"
  end

  test "destroying a Attr" do
    visit attrs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attr was successfully destroyed"
  end
end
