require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get new" do
    get signup_url
    assert_response :success
  end

  # test "should create user" do
  #   assert_difference('User.count') do
  #     post users_url, params: { user: { email: @user.email, first_name: @user.first_name, last_name: @user.last_name } }
  #   end
  #
  #   assert_redirected_to user_url(User.last)
  # end
end
