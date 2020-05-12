require 'test_helper'

class ButterrollsControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get butterrolls_main_url
    assert_response :success
  end

end
