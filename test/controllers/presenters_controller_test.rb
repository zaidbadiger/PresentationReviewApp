require 'test_helper'

class PresentersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get presenters_new_url
    assert_response :success
  end

  test "should get create" do
    get presenters_create_url
    assert_response :success
  end

end
