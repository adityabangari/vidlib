require 'test_helper'

class MoviedataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get moviedata_index_url
    assert_response :success
  end

end
