require 'test_helper'

class DegreesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get degrees_index_url
    assert_response :success
  end

end
