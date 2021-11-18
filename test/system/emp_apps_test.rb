require "application_system_test_case"

class EmpAppsTest < ApplicationSystemTestCase
  setup do
    @emp_app = emp_apps(:one)
  end

  test "visiting the index" do
    visit emp_apps_url
    assert_selector "h1", text: "Emp Apps"
  end

  test "creating a Emp app" do
    visit emp_apps_url
    click_on "New Emp App"

    fill_in "Age", with: @emp_app.age
    fill_in "Designation", with: @emp_app.designation
    fill_in "Gender", with: @emp_app.gender
    fill_in "Name", with: @emp_app.name
    click_on "Create Emp app"

    assert_text "Emp app was successfully created"
    click_on "Back"
  end

  test "updating a Emp app" do
    visit emp_apps_url
    click_on "Edit", match: :first

    fill_in "Age", with: @emp_app.age
    fill_in "Designation", with: @emp_app.designation
    fill_in "Gender", with: @emp_app.gender
    fill_in "Name", with: @emp_app.name
    click_on "Update Emp app"

    assert_text "Emp app was successfully updated"
    click_on "Back"
  end

  test "destroying a Emp app" do
    visit emp_apps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emp app was successfully destroyed"
  end
end
