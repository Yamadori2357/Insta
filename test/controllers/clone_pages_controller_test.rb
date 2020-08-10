require 'test_helper'

class ClonePagesControllerTest < ActionDispatch::IntegrationTest



  test "should get top_page" do
    get root_path
    assert_response :success
  end

  test "should get my_page" do
    get my_page_path
    assert_response :success
  end
  


end
