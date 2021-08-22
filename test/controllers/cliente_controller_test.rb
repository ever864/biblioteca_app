require "test_helper"

class ClienteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cliente_index_url
    assert_response :success
  end
end
