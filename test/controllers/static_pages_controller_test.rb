require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get login" do
    get static_pages_login_url
    assert_response :success
  end

  test "should get signup" do
    get static_pages_signup_url
    assert_response :success
  end

  test "should get student_home" do
    get static_pages_student_home_url
    assert_response :success
  end

  test "should get instructor_home" do
    get static_pages_instructor_home_url
    assert_response :success
  end

end
