require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get mwhome" do
    get :mwhome
    assert_response :success
  end

end
