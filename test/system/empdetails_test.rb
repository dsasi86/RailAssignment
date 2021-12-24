require "application_system_test_case"

class EmpdetailsTest < ApplicationSystemTestCase
  setup do
    @empdetail = empdetails(:one)
  end

  test "visiting the index" do
    visit empdetails_url
    assert_selector "h1", text: "Empdetails"
  end

  test "should create empdetail" do
    visit empdetails_url
    click_on "New empdetail"

    fill_in "Age", with: @empdetail.Age
    fill_in "Designation", with: @empdetail.Designation
    fill_in "Gender", with: @empdetail.Gender
    fill_in "Name", with: @empdetail.Name
    fill_in "Address", with: @empdetail.address
    fill_in "Contact number", with: @empdetail.contact_number
    fill_in "Decimal", with: @empdetail.decimal
    click_on "Create Empdetail"

    assert_text "Empdetail was successfully created"
    click_on "Back"
  end

  test "should update Empdetail" do
    visit empdetail_url(@empdetail)
    click_on "Edit this empdetail", match: :first

    fill_in "Age", with: @empdetail.Age
    fill_in "Designation", with: @empdetail.Designation
    fill_in "Gender", with: @empdetail.Gender
    fill_in "Name", with: @empdetail.Name
    fill_in "Address", with: @empdetail.address
    fill_in "Contact number", with: @empdetail.contact_number
    fill_in "Decimal", with: @empdetail.decimal
    click_on "Update Empdetail"

    assert_text "Empdetail was successfully updated"
    click_on "Back"
  end

  test "should destroy Empdetail" do
    visit empdetail_url(@empdetail)
    click_on "Destroy this empdetail", match: :first

    assert_text "Empdetail was successfully destroyed"
  end
end
