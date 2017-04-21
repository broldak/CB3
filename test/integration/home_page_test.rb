require 'test_helper'

class HomePageTest < ActionDispatch::IntegrationTest
  test "home page should have nav, app container, and footer" do
    get root_url

    assert_template 'static_pages/home'
    assert_response :success

    assert_select ".nav", 1, "has nav"
    assert_select "#app", 1, "has app container"
    assert_select "footer", 1, "has footer"
  end
end
