require 'test_helper'

class PresentationStudentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get presentation_student_new_url
    assert_response :success
  end

  test "should get show" do
    get presentation_student_show_url
    assert_response :success
  end

  test "should get create" do
    get presentation_student_create_url
    assert_response :success
  end

end
