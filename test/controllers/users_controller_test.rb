require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get new" do
    get signup_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post signup_url, params: { user: { email: 'broldak124490@gmail.com', first_name: @user.first_name, last_name: @user.last_name, password: 'password', password_confirmation: 'password' } }
    end

    assert_redirected_to profile_url(User.last)
  end
end
