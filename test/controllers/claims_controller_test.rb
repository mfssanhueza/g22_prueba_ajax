require 'test_helper'

class ClaimsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get claims_create_url
    assert_response :success
  end

  test "should get idex" do
    get claims_idex_url
    assert_response :success
  end

end
