require "test_helper"

class EmpAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emp_app = emp_apps(:one)
  end

  test "should get index" do
    get emp_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_emp_app_url
    assert_response :success
  end

  test "should create emp_app" do
    assert_difference('EmpApp.count') do
      post emp_apps_url, params: { emp_app: { age: @emp_app.age, designation: @emp_app.designation, gender: @emp_app.gender, name: @emp_app.name } }
    end

    assert_redirected_to emp_app_url(EmpApp.last)
  end

  test "should show emp_app" do
    get emp_app_url(@emp_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_emp_app_url(@emp_app)
    assert_response :success
  end

  test "should update emp_app" do
    patch emp_app_url(@emp_app), params: { emp_app: { age: @emp_app.age, designation: @emp_app.designation, gender: @emp_app.gender, name: @emp_app.name } }
    assert_redirected_to emp_app_url(@emp_app)
  end

  test "should destroy emp_app" do
    assert_difference('EmpApp.count', -1) do
      delete emp_app_url(@emp_app)
    end

    assert_redirected_to emp_apps_url
  end
end
