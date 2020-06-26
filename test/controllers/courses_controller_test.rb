require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get courses_home_url
    assert_response :success
  end

end
