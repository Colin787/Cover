require 'test_helper'

class UsertypesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get usertypes_new_url
    assert_response :success
  end

  test "should get create" do
    get usertypes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get usertypes_destroy_url
    assert_response :success
  end

  test "should get updatew" do
    get usertypes_updatew_url
    assert_response :success
  end

end
