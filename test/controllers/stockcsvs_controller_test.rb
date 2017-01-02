require 'test_helper'

class StockcsvsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stockcsvs_index_url
    assert_response :success
  end

  test "should get import" do
    get stockcsvs_import_url
    assert_response :success
  end

end
