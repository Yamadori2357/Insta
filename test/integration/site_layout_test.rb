require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
 test "layout links" do
    get root_path
    assert_template 'clone_pages/top_page'
    assert_select "a[href=?]", root_path
  end
end
