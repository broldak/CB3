require 'test_helper'

class SignupTest < ActionDispatch::IntegrationTest
  test "signup renders properly" do
    get signup_url

    assert_template 'users/new'
    assert_response :success

    assert_select "h1", 1, "has title"
  end
end
