require 'test_helper'

class PresentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @present = presents(:one)
  end

  test "should get index" do
    get presents_url
    assert_response :success
  end

  test "should get new" do
    get new_present_url
    assert_response :success
  end

  test "should create present" do
    assert_difference('Present.count') do
      post presents_url, params: { present: { presentation_id: @present.presentation_id, user_id: @present.user_id } }
    end

    assert_redirected_to present_url(Present.last)
  end

  test "should show present" do
    get present_url(@present)
    assert_response :success
  end

  test "should get edit" do
    get edit_present_url(@present)
    assert_response :success
  end

  test "should update present" do
    patch present_url(@present), params: { present: { presentation_id: @present.presentation_id, user_id: @present.user_id } }
    assert_redirected_to present_url(@present)
  end

  test "should destroy present" do
    assert_difference('Present.count', -1) do
      delete present_url(@present)
    end

    assert_redirected_to presents_url
  end
end
