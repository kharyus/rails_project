require 'test_helper'

class MagicControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get magic_index_url
    assert_response :success
  end

  test "should get show" do
    get magic_show_url
    assert_response :success
  end

end
