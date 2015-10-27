require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get feedback" do
    get :feedback
    assert_response :success
  end

  test "should get partners" do
    get :partners
    assert_response :success
  end

end
