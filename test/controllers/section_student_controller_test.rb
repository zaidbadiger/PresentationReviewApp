require 'test_helper'

class SectionStudentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get section_student_new_url
    assert_response :success
  end

  test "should get create" do
    get section_student_create_url
    assert_response :success
  end

end
