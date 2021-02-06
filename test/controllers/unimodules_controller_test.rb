require 'test_helper'

class UnimodulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unimodules_index_url
    assert_response :success
  end

end
