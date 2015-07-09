require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

end
