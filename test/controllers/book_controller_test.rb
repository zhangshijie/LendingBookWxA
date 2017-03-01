require 'test_helper'

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get user" do
    get book_user_url
    assert_response :success
  end

end
